---
layout: post
title:  "Implementation of Seq2seq translation model"
date:   3000-01-01 00:00:00 +0900
---

Excerpt

<!-- more -->


```py
import torch
import torch.nn as nn
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
```

<center><b>II. Encoder</b></center>

```py
class Encoder(nn.Module):
	def __init__(self, n_vocab, embed_dim, hidden_dim):
		super(Encoder, self).__init__()
		self.Kx = n_vocab
		self.E = embed_dim
		self.H = hidden_dim
		self.emb = nn.Embedding(self.Kx, self.E)
		self.gru = nn.GRU(self.E, self.H, bidirectional=True)

	def forward(self, inputs, hidden=None): # [Tx,B]
		embeds = self.emb(inputs) # [Tx,B;E]<-[Tx,B]
		outputs, hidden = self.gru(embeds, hidden) #: [Tx,B;2H],[2,B;H]<-[Tx,B;E],[2,B;H]
		return outputs, hidden # [Tx,B;2H],[2,B;H]
```



<center><b>III. Decoder</b></center>

```py
class Decoder(nn.Module):
	def __init__(self, n_vocab, embed_dim, hidden_dim):
		super(Decoder, self).__init__()
		self.Ky = n_vocab
		self.E = embed_dim
		self.H = hidden_dim
		self.emb = nn.Embedding(self.Ky, self.E)
		self.gru = nn.GRU(self.E + 2*self.H, self.H) # must be bidirectional=False
		self.lsm = nn.Sequential(
						nn.Linear(3*self.H, self.Ky),
						nn.LogSoftmax(dim=-1)
					)
		self.attn = nn.Sequential(
						nn.Linear(3*self.H, self.H), # [Tx,B;H]<-[Tx,B;3H]
						nn.Tanh(), # [Tx,B;H]<-[Tx,B;H]
						nn.Linear(self.H, 1), # [Tx,B;1]<-[Tx,B;H]
						nn.Softmax(dim=0) # [Tx,B;1]<-[Tx,B;1]
					)

	def forward(self, input, hidden, enc_output): # [B],[B;H],[Tx,B;2H]
		context = self.alignment(hidden, enc_output) # [B,2H]<-[B;H],[Tx,B;2H]
		
		embed = self.emb(input) # [B;E]<-[B]
		rnn_input = torch.cat([embed, context],1) # [B;E+2H]<-[B;E],Context
		rnn_input = rnn_input.unsqueeze(0) # [1,B;E+2H]<-[B;E+2H]
		hidden = hidden.unsqueeze(0)

		# >> rnn_in[1,B;E+2H], hidden[1,B;H]
		rnn_output, hidden = self.gru(rnn_input, hidden)
		rnn_output = rnn_output.squeeze(0) # [B;H]<-[1,B;H]
		# << rnn_out[B;H], hidden[1,B;H]

		output = torch.cat([rnn_output, context],1) # [B;3H]<-[B;H],Context
		output = self.lsm(output) # [B;Ky]<-[B;3H]
		return output, hidden[-1] # [B;Ky],[B;H]

	def alignment(self, hidden, enc_output): # [B;H],[Tx,B;2H]
		Tx = enc_output.size(0)
		hidden = hidden.repeat(Tx,1,1) # [Tx,B;H]<-[B;H]
		attn_input = torch.cat([hidden, enc_output],2)
		attnw = self.attn(attn_input) # [Tx,B;1]<-[Tx,B;3H]

		attnw = attnw.transpose(0,1).transpose(1,2) # [B,1,Tx]<-[Tx,B,1]
		enc_output = enc_output.transpose(0,1) # [B,Tx,2H]<-[Tx,B,2H]
		context = torch.bmm(attnw, enc_output).squeeze(1) # [B,2H]<-[B,1,2H]<-[B,1,Tx],[B,Tx,2H]
		return context # [B,2H]

```



<center><b>IV. Seq2seq model</b></center>

```py
class Seq2Seq(nn.Module):
	def __init__(self, n_enc_vocab, n_dec_vocab, embed_dim, hidden_dim):
		super(Seq2Seq, self).__init__()
		self.encoder = Encoder(n_enc_vocab, embed_dim, hidden_dim).to(device)
		self.decoder = Decoder(n_dec_vocab, embed_dim, hidden_dim).to(device)
		self.init_hidden = nn.Sequential(
				nn.Linear(hidden_dim, hidden_dim),
				nn.Tanh()
			).to(device)

	def forward(self, inputs, trg_len): # [Tx,B],Ty
		Ty = trg_len
		B = inputs.size(1)
		Ky = self.decoder.Ky
		outputs = torch.zeros(Ty, B, Ky).to(device)

		# encoding
		enc_output, hidden = self.encoder(inputs) # [Tx,B;2H],[2,B;H]<-[Tx,B]

		# initialize inputs for decoder
		input = torch.ones([B],dtype=torch.long).to(device) # [B] SOS
		hidden = self.init_hidden(hidden[-1]) # [B;H]<-[2,B;H]

		# decoding
		for t in range(1, Ty):
			output, hidden = self.decoder(input, hidden, enc_output)
			outputs[t] = output
			input = output.max(1)[1]
		return outputs
```