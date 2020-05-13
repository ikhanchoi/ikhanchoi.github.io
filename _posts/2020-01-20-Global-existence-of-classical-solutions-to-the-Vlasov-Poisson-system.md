---
layout: post
title:  "Global existence of classical solutions to the Vlasov-Poisson
system"
date:   2020-01-20 00:00:00 +0900
---
{% raw %}



<!-- more -->

<center><b>

Acknowledgement

</b></center>

This report is written in Undergraduate Research Program of Postech
during 2019 fall semester, under the support and advice of professor
Donghyun Lee.

#### Vlasov-Poisson system

Consider the following Cauchy problem for the *Valsov-Poisson system*:

$$\begin{aligned}
\left\{\ \begin{alignedat}{2}
&\partial_tf+v\cdot\nabla_xf+\gamma E\cdot\nabla_vf=0,&&\qquad(t,x,v)\in\mathbb{R}_t^+\times\mathbb{R}_x^3\times\mathbb{R}_v^3,\\
&E(t,x)=-\nabla_x\Phi,\\
&\Phi(t,x)=(-\Delta_x)^{-1}\rho,&&\hspace{-2em}\lim_{&#124;x&#124;\to\infty}\Phi(t,x)=0,\\
&\rho(t,x)={\textstyle\int}f\,dv,\\
&f(0,x,v)=f_0(x,v)\ge0,
\end{alignedat}\right.\end{aligned}$$

where $\gamma=\pm1$. For example, we have *repulsive problem*
$\gamma=+1$ for electrons in plasma theory and *attractive problems*
$\gamma=-1$ for galactic dynamics. ($\rho$ denotes mass density.)

This report is a review of Schaeffer's paper [@schaeffer1991global], and
is written thanks to Glassey's book [@glassey1996cauchy]. We mainly
investigate the local and global existence problem for a classical
solution of the Cauchy problem for the Vlasov-Poisson system. More
precisely, we prove there is a unique global $C\_c^1$ solution when
given a $C\_c^1$ initial data $f\_0$. Let us define our solution space.

Let $f\_0:\mathbb{R}^6\to[0,\infty]$ be a function. A function
$f:[0,T]\times\mathbb{R}^6\to\mathbb{R}$ is said to be a *classical
solution* of the Cauchy problem for the Vlasov-Poisson system with
initial data $f\_0$ if $f\in C^1([0,T];C\_c^1(\mathbb{R}^6))$ and
satisfies all equations in (1) on its domain. Further, if
$f\in C^1(\mathbb{R}^+;C\_c^1(\mathbb{R}^6))$, then the classical
solution $f$ is said to be *global*.

The precise statement of the global existence theorem is as follows:

<b> Theorem. </b> Let
$f\_0\in C\_c^1(\mathbb{R}^6,[0,\infty))$. Then, there exists a unique
global classical solution of the Cauchy problem for the Vlasov-Poisson
system with initial data $f\_0$.

Results in 1.1 and 1.2 provide basic ingredients that will be used in
the whole article. On the other hand, results in 1.3 cannot be used in
any local existence proof because they assume the existence of
solutions, but they help understand the fundamental nature of solutions
of the Vlasov-Poisson system and are used in the proof of global
existence.

We use the asymptotic notation

$$g(t)\lesssim h(t)\iff\exists\,c=c(f_0),\quad g(t)\le c\,h(t)$$

and

$$g(t)\simeq h(t)\iff\exists\,c,\quad g(t)=c\,h(t).$$

This report does not contain any other norms except the $L^p$ norms so
that double vertical bars always refer to the $L^p$ norms. We also omit
marginalized variables and the subscript $L$. For example,

$$\&#124;f(t)\&#124;_p=(\iint&#124;f(t,x,v)&#124;^p\,dv\,dx)^{1/p},\quad\&#124;\rho(t)\&#124;_p=(\int&#124;\rho(r,x)&#124;^p\,dx)^{1/p}.$$

##### Poisson equation

For the three-dimensional boundaryless problem of the Poisson equation

$$-\Delta\Phi(x)=\rho(x)$$

in which the solution $\Phi$ vanishes at infinity, it is well-known that

$$\Phi=\tfrac1{4\pi&#124;x&#124;}*\rho,$$

so the electric field in the Vlasov-Poisson system is given by

$$E=-\nabla_x\Phi=-\nabla_x(\tfrac1{4\pi&#124;x&#124;}*\rho)=\frac{x}{4\pi&#124;x&#124;^3}*\rho.$$

It can be rewritten as

$$E(t,x)=\frac1{4\pi}\int\frac{(x-y)\rho(t,y)}{&#124;x-y&#124;^3}\,dy.$$

The nonlinearity of the system is originated from the force field $E$,
so its estimates play a crucial role in study of the nonlinear system.
Since it is given by the solution of the Poisson equation, estimates of
the Riesz potential, the convolution with a kernel of the form
$&#124;x&#124;^{-(d-\alpha)}$, are directly connected to estimates of
the force field.

Let $\rho\in C\_c^1(\mathbb{R}^d)$.

(Field estimate)

$$\&#124;\tfrac1{&#124;x&#124;^{d-1}}*\rho\&#124;_\infty\lesssim\&#124;\rho\&#124;_\infty^{1-1/d}\&#124;\rho\&#124;_1^{1/d}$$

(Field derivative estimate) For $\log^+(x):=\max\\{0,\log x\\}$,

$$\&#124;\nabla(\tfrac1{&#124;x&#124;^{d-1}}*\rho)\&#124;_\infty\lesssim 1+\&#124;\rho\&#124;_\infty\log^+\&#124;\nabla\rho\&#124;_\infty+\&#124;\rho\&#124;_1.$$

$$\

Let $0\le\frac1p&lt;\frac\alpha d&lt;\frac1q\le1$. Since
$(d-\alpha)p&lt;d&lt;(d-\alpha)q$,

$$\begin{aligned}
&#124;\tfrac1{&#124;x&#124;^{d-\alpha}}*\rho&#124;
&=\int_{&#124;x-y&#124;&lt;R}\frac{\rho(y)}{&#124;x-y&#124;^{d-\alpha}}\,dy+\int_{&#124;x-y&#124;\ge R}\frac{\rho(y)}{&#124;x-y&#124;^{d-\alpha}}\,dy\\
&\le\&#124;\rho\&#124;_{p'}(\int_{&#124;y&#124;&lt;R}\frac{dy}{&#124;y&#124;^{(d-\alpha)p}})^{1/p}+\&#124;\rho\&#124;_{q'}(\int_{&#124;y&#124;\ge R}\frac{dy}{&#124;y&#124;^{(d-\alpha)q}})^{1/q}\\
&\simeq\&#124;\rho\&#124;_{p'}(\int_0^Rr^{d-1-(d-\alpha)p}\,dr)^{1/p}+\&#124;\rho\&#124;_{q'}(\int_R^\infty r^{d-1-(d-\alpha)q}\,dr)^{1/q}\\
&\simeq\&#124;\rho\&#124;_{p'}R^{\frac dp-d+\alpha}+\&#124;\rho\&#124;_{q'}R^{\frac dq-d+\alpha}.\end{aligned}$$

By choosing $R$ such that
$\&#124;\rho\&#124;\_{p'}R^{\frac dp-d+\alpha}=\&#124;\rho\&#124;\_{q'}R^{\frac dq-d+\alpha}$,
we get

$$\&#124;\tfrac1{&#124;x&#124;^{d-\alpha}}*\rho\&#124;_\infty\lesssim\&#124;\rho\&#124;_{p'}^{\frac{1-\frac\alpha d-\frac1q}{\frac1p-\frac1q}}\&#124;\rho\&#124;_{q'}^{\frac{\frac1p-1+\frac\alpha d}{\frac1p-\frac1q}},$$

so the inequality

$$\&#124;\tfrac1{&#124;x&#124;^{d-\alpha}}*\rho\&#124;_\infty^{\frac1q-\frac1p}\lesssim\&#124;\rho\&#124;_p^{\frac1q-\frac\alpha d}\&#124;\rho\&#124;_q^{\frac\alpha d-\frac1p}$$

is obtained by interchaning $p$ and $q$ with their conjugates. The
desired result gets $p=\infty$, $\alpha=1$, and $q=1$.

Let $0&lt;R\_a\le R\_b$ be constants which will be determined later.
Divide the region radially

$$\begin{aligned}
&#124;\nabla(\tfrac1{&#124;x&#124;^{d-1}}*\rho)&#124;\lesssim\nabla\int_{&#124;x-y&#124;&lt;R_a}+\nabla\int_{R_a\le&#124;x-y&#124;&lt;R_b}+\nabla\int_{R_b\le&#124;x-y&#124;}.\end{aligned}$$

For the first integral,

$$\begin{aligned}
\int_{&#124;y&#124;&lt;R_a}\frac{\nabla\rho(x-y)}{&#124;y&#124;^{d-1}}\,dy
&\le\&#124;\nabla\rho\&#124;_\infty\int_{&#124;y&#124;&lt;R_a}\frac1{&#124;y&#124;^{d-1}}\,dy\\
&\simeq\&#124;\nabla\rho\&#124;_\infty\int_0^{R_a}1\,dr
=R_a\&#124;\nabla\rho\&#124;_\infty.\end{aligned}$$

For the second integral,

$$\begin{aligned}
\int_{R_a\le&#124;x-y&#124;&lt;R_b}\frac{\rho(y)}{&#124;x-y&#124;^d}\,dy
&\le\&#124;\rho\&#124;_\infty\int_{R_a\le&#124;x-y&#124;&lt;R_b}\frac1{&#124;x-y&#124;^d}\,dy\\
&\simeq\&#124;\rho\&#124;_\infty\int_{R_a}^{R_b}\frac1r\,dr
=(\log\tfrac{R_b}{R_a})\&#124;\rho\&#124;_\infty.\end{aligned}$$

For the third integral,

$$\int_{R_b\le&#124;x-y&#124;}\frac{\rho(y)}{&#124;x-y&#124;^d}\,dy\le R_b^{-d}\&#124;\rho\&#124;_1.$$

Thus,

$$&#124;\nabla(\tfrac1{&#124;x&#124;^{d-1}}*\rho)&#124;\lesssim R_a\&#124;\nabla\rho\&#124;_\infty+(\log\tfrac{R_b}{R_a})\&#124;\rho\&#124;_\infty+R_b^{-d}\&#124;\rho\&#124;_1.$$

Assuming $\rho$ is nonzero so that $\&#124;\nabla\rho\&#124;\_\infty>0$,
let $R\_a=\min\\{1,\&#124;\nabla\rho\&#124;\_\infty^{-1}\\}$ and
$R\_b=1$. Since

$$\log\tfrac1{R_a}\le\log^+\&#124;\nabla\rho\&#124;_\infty\quad\text{and}\quad R_a\lesssim\&#124;\nabla\rho\&#124;_\infty,$$

we have

$$\&#124;\nabla(\tfrac1{&#124;x&#124;^{d-1}}*\rho)\&#124;_\infty\lesssim 1+\&#124;\rho\&#124;_\infty\log^+\&#124;\nabla\rho\&#124;_\infty+\&#124;\rho\&#124;_1.$$

##### Characteristics and volume preservation

The Vlasov-Poisson equation is quite hyperbolic. What we mean here is
that the method of characteristic curves is useful, and it does not
regularizes the solution directly. Although we do not have an explicit
representation formula, solutions written by characteristic curves make
appropriate estimates possible.

Moreover, since the Vlasov-Poisson system is a Hamiltonian system on the
phase space $\mathbb{R}\_x^3\times\mathbb{R}\_v^3$ with the Hamiltonian
$H(x,v)=\frac12v^2+\gamma\Phi(x,v)$, it has the volume preserving
propoerty. We, however, will show the volume preservation by computation
of the Jacobian determinant for coordinates transformations through
characteristic flows.

Let $f$ be a classical solution of the Vlasov-Poisson system.

Fix $t,x,v$. The system of ordinary differential equations

$$\begin{gathered}
\dot X(s;t,x,v)=V(s;t,x,v),\quad\dot V(s;t,x,v)=\gamma E(t,X(s;t,x,v)),\\
X(t;t,x,v)=x,\qquad V(t;t,x,v)=v,\end{gathered}$$

where the dot symbol denote the time derivative $\dd{s}$, has a solution
$(X,V)$ in $C^1([0,T],\mathbb{R}^6)$.

Fix $t,x,v$. Then, $f(s,X(s;t,x,v),V(s;t,x,v))=\mathop{\mathrm{const}}$.

Fix $t$, and let

$$y(s;x,v):=X(s;t,x,v)\quad\text{and}\quad w(s;x,v):=V(s;t,x,v).$$

Then, the Jacobian of coordinates transform $(x,v)\mapsto(y,w)$ is 1 for
all $s$.

$$\

Note that we have

$$\rho\in C^1([0,T];C_c^1(\mathbb{R}^6)),\quad\Phi\in C^1([0,T];C^{2,\alpha}(\mathbb{R}^6))$$

so that

$$E\in C^1([0,T];C^{1,\alpha}(\mathbb{R}^6))$$

by the Hölder regularity of the Poisson equation. Since a map

$$(x,v)\mapsto(v,\gamma E(t,x))$$

is globally Lipschitz with respect to $(x,v)$ for each $t$, we can apply
the Picard Lindelöf theorem.

Differentiate and use the chain rule to get

$$\begin{aligned}
\dd{s}&f(s,y,w)\\
&=\pd_tf(s,y,w)+\dot X(s;s,y,w)\cdot\nabla_xf(s,y,w)+\dot V(s;s,y,w)\cdot\nabla_vf(s,y,w)\\
&=\pd_tf(s,y,w)+w\cdot\nabla_xf(s,y,w)+\gamma E(s,y)\cdot\nabla_vf(s,y,w)=0,\end{aligned}$$

where we denote $y=X(s;t,x,v)$ and $w=V(s;t,x,v)$.

Let $J(s)=\pd{(y,w)}{(x,v)}$ be the Jacobi matrix. Because when $s=t$
the Jacobian is

$$\det J(t)=\det\pd{(x,v)}{(x,v)}=1,$$

We want to show

$$\det J(s)=\mathop{\mathrm{const}}.$$

Since

$$J^{-1}(s)\dd{s}J(s)=\pd{(x,v)}{(y,x)}\dd{s}\pd{(y,w)}{(x,v)}=\pd{(\dot y,\dot w)}{(y,w)}=%
  \begin{pmatrix}0&1\\\gamma\pd{E}{y}(s,y)&0\end{pmatrix}
,$$

the Jacobi formula deduces that

$$\dd{s}\det J(s)=\det(s)\mathop{\mathrm{tr}}\left(J^{-1}(s)\dd{s}J(s)\right)=0.$$

Let $f$ be a classical solution of the Cauchy problem for the
Vlasov-Poisson system. Then, for any measurable function
$\beta:\mathbb{R}\to\mathbb{R}$ such that
$\iint\beta\circ f\_0(x,v)\,dv\,dx&lt;\infty$, we have

$$\iint\beta\circ f(t,x,v)\,dv\,dx=\mathop{\mathrm{const}}.$$

In particular,

$$\&#124;f(t)\&#124;_p=\mathop{\mathrm{const}}$$

for $1\le p\le\infty$.

Fix $t,s[0,T]$ and denote $y=X(s;t,x,v)$ and $w=V(s;t,x,v)$. Then,

$$\begin{aligned}
\iint\beta\circ f(t,x,v)\,dv\,dx
&=\iint\beta\circ f(s,X(s;t,x,v),V(s;t,x,v))\,dv\,dx\\
&=\iint\beta\circ f(s,y,w)\,dw\,dy\end{aligned}$$

for $s\le T$.

To sum up our weapons obtained so far, we have the following.

If a function $f\in C^1([0,T],C\_c^1(\mathbb{R}^6))$ satisfies

$$\iint f(t,x,v)\,dv\,dx=\mathop{\mathrm{const}},$$

and if we let

$$\rho(t,x)=\int f(t,x,v)\,dv,\quad E(t,x)=\frac1{4\pi}\int\frac{(x-y)\rho(t,y)}{&#124;x-y&#124;^3}\,dy,$$

then

$\&#124;\rho(t)\&#124;\_1=\mathop{\mathrm{const}}$,

$\&#124;E(t)\&#124;\_\infty\lesssim\&#124;\rho(t)\&#124;\_\infty^{2/3}$,

$\&#124;\nabla E(t)\&#124;\_\infty\lesssim 1+\&#124;\rho\&#124;\_\infty\log^+\&#124;\nabla\rho\&#124;\_\infty$.

These estimates will be applied not only to the global existence proof,
which assumes the local existence, but also to approximate solutions.

Note that the volume preservation is also yielded for a approximation
scheme, which will be suggested in the next section, hence the same
results in Corollary 1.4 for the approximate solutions in the same
manner. The proof will be omitted.

##### Conservation laws and moment propagation

Usual algebraic computations with Stokes' theorem get several
conservations laws, particularly including energy conservation.

Let $f$ be a classical solution of the Vlasov-Poisson system.

(Continuity equation)

$$\rho_t+\nabla_x\cdot j=0,\qquad\text{where}\quad j=\int vf\,dv.$$

(Energy conservation)

$$\iint&#124;v&#124;^2f\,dv\,dx+\gamma\int&#124;E&#124;^2\,dx=\mathop{\mathrm{const}}.$$

$$\

Integrate with respect to $v$ to get

$$\begin{aligned}
0&=\int f_t\,dv+\int v\cdot\nabla_xf\,dv\\
&=\rho_t+\nabla_x\cdot\int vf\,dv\\
&=\rho_t+\nabla_x\cdot j.\end{aligned}$$

Multiply $&#124;v&#124;^2$ and integrate with respect to $v$ and $x$ to
get

$$\begin{aligned}
\dd{t}\iint&#124;v&#124;^2f\,dv\,dx
&=\iint&#124;v&#124;^2f_t\,dv\,dx=-\iint&#124;v&#124;^2\gamma E\cdot\nabla_vf\,dv\,dx\\
&=\iint2v\cdot\gamma Ef\,dv\,dx=-2\gamma\int\nabla_x\Phi\cdot j\,dx\\
&=2\gamma\int\Phi\nabla_x\cdot j\,dx=2\gamma\int\Phi\Delta_x\Phi_t\,dx\\
&=-\dd{t}\gamma\int&#124;E&#124;^2\,dx.\end{aligned}$$

Thus

$$\iint&#124;v&#124;^2f\,dv\,dx+\gamma\int&#124;E&#124;^2\,dx=\mathop{\mathrm{const}}.$$

Kinetic energy is a type of quantities which are called moments; we call
the quantities of the form

$$\iint&#124;v&#124;^kf(t,x,v)\,dv\,dx$$

*moments*, with a positive real $k$. The energy conservation proves the
bound of the 2-moment, kinetic energy,

$$\iint&#124;v&#124;^2f(t,x,v)\,dv\,dx\lesssim 1$$

if $\gamma=+1$. In fact, a bound of kinetic energy exists even for
$\gamma=-1$. As a corollary, the $L^{5/3}$ norm of mass density
$\&#124;\rho\&#124;\_{5/3}$ gets bounded.

Let $f\in C^1([0,T],C\_c^1(\mathbb{R}^6))$ be a solution of the
Vlasov-Poisson system. For $t\in[0,T]$,

$\&#124;\rho(t)\&#124;\_{5/3}\lesssim\iint&#124;v&#124;^2f\,dv\,dx$.

$\iint&#124;v&#124;^2f\,dv\,dx\lesssim 1$.

$$\

Note

$$\begin{aligned}
\rho(t,x)=\int f(t,x,v)\,dv
&\le\int_{&#124;v&#124;&lt;R}f\,dv+\frac1{R^2}\int_{&#124;v&#124;\ge R}&#124;v&#124;^2f\,dv\\
&\lesssim R^3+ R^{-2}\int&#124;v&#124;^2f\,dv.\end{aligned}$$

Set $R^3=R^{-2}\int&#124;v&#124;^2f\,dv$ to get

$$\rho(t,x)^{5/3}\lesssim\int&#124;v&#124;^2f\,dv.$$

It is trivial for $\gamma=+1$ from the energy conservation. Suppose
$\gamma=-1$. By the Hardy-Littlewood-Sobolev inequality,

$$\frac1p+\frac\alpha d=\frac1q$$

for $p=2$, $d=3$, and $\alpha=1$ implies $q=6/5$, hence the bound of
$\&#124;E(t)\&#124;\_2$

$$\&#124;E(t)\&#124;_2\simeq\&#124;\frac1{&#124;x&#124;^{d-\alpha}}*_x\rho(t,x)\&#124;_{L_x^2}\lesssim\&#124;\rho(t)\&#124;_{6/5}.$$

So, interpolation with Hölder's inequality gives

$$\&#124;E(t)\&#124;_2\lesssim\&#124;\rho\&#124;_1^{7/12}\&#124;\rho\&#124;_{5/3}^{5/12}\simeq\&#124;\rho\&#124;_{5/3}^{5/12}.$$

Thus (1) gives

$$\iint&#124;v&#124;^2f\,dv\,dx=c+\&#124;E(t)\&#124;_2^2\lesssim c+(\iint&#124;v&#124;^2f\,dv\,dx)^{1/2},$$

so the kinetic energy $\iint f\,dv\,dx$ is bounded.

If we had a bound of higher moment

$$\iint&#124;v&#124;^kf(t,x,v)\,dv\,dx\lesssim 1$$

for some $k>6$ so that $\&#124;\rho(t)\&#124;\_p\lesssim 1$ for some
$p=\frac{k+3}3>3$, then we would obtain

$$\&#124;E(t)\&#124;_\infty^{1-\frac1p}\lesssim\&#124;\rho\&#124;_p^{\frac23}\&#124;\rho\&#124;_1^{\frac13-\frac1p}\lesssim 1.$$

We will see that this estimate proves the global existence immediately;
this is the idea of the paper of Lions and Perthame
[@lions1991propagation]. We do not cover this in detail.

#### Local existence

The proof of local existence follows the following steps:

1.  construction of an approximate solution,

2.  establishment of a priori estimates,

3.  (subsequential) convergence of the approximate solution,

4.  verification of the solvability for the limit.

The Vlasov-Poisson system is good enough that we can show the usual
convergence of approximate solutions, not in the sense of subsequences.

##### Approximate solution

We define an (global) *approximate solution* as a sequence of functions
$f\_n\in C^1(\mathbb{R}^+;C\_c^1(\mathbb{R}^6))$ such that

$$\left\{\ \begin{alignedat}{2}
&\pd_tf_{n+1}+v\cdot\nabla_xf_{n+1}+\gamma E_n\cdot\nabla_vf_{n+1}=0,\\
&E_n(t,x)=-\nabla_x\Phi_n,\\
&\Phi_n(t,x)=(-\Delta_x)^{-1}\rho_n,\qquad\lim_{&#124;x&#124;\to\infty}\Phi(t,x)=0,\\
&\rho_n(t,x)={\textstyle\int}f_n\,dv,\\
&f_{n+1}(0,x,v)=f_0(x,v).
\end{alignedat}\right.$$

This definition is made in order to let the force field $E$ constant
when solving $f\_{n+1}$. Note that it assumes for $f\_0$ to be
automatically $C\_c^1$ by definition.

An approximate solution exists for given initial term
$f\_0\in C\_c^1(\mathbb{R}^6)$.

Let $f\_0(t,x,v)=f\_0(x,v)$. Notice that $f\_0$ is clearly in
$C^1(\mathbb{R}^+;C\_c^1(\mathbb{R}^6))$. Assume
$f\_n\in C^1(\mathbb{R}^+;C\_c^1(\mathbb{R}^6))$ satisfies the
approximate system. We want to show that there is $f\_{n+1}$ that
satisfies the approximate system and
$f\_{n+1}\in C^1(\mathbb{R}^+;C\_c^1(\mathbb{R}^6))$.

We have for $0&lt;\alpha&lt;1$ that

$$\rho_n\in C^1(\mathbb{R}^+;C_c^1(\mathbb{R}^6)),\quad\Phi_n\in C^1(\mathbb{R}^+;C^{2,\alpha}(\mathbb{R}^6)),\ \text{and}\ E_n\in C^1(\mathbb{R}^+;C^{1,\alpha}(\mathbb{R}^6))$$

by the Hölder regularity of the Poisson equation. Since a map
$(x,v)\mapsto(v,\gamma E\_n(t,x))$ is globally Lipschitz with respect to
$(x,v)$ for each $t$, the classical Picard iteration uniquely solves the
characteristic equation

$$\left\{\ \begin{alignedat}{2}
\dot X_{n+1}(s;t,x,v)&=V_{n+1}(s,t,x,v)\\
\dot V_{n+1}(s;t,x,v)&=\gamma E_n(s,X_{n+1}(s;t,x,v))
\end{alignedat}\right.$$

with condition $(X\_{n+1}(t;t,x,v),V\_{n+1}(t;t,x,v))=(x,v)$, and proves
the uniqueness and regularity of the solution
$s\mapsto(X\_{n+1},V\_{n+1})(s;t,x,v)\in C^1(\mathbb{R}^+,\mathbb{R}^6)$.

Define

$$f_{n+1}(t,x,v):=f_0(X_{n+1}(0;t,x,v),V_{n+1}(0;t,x,v)).$$

Then, $f\_{n+1}$ is clearly $C^1$, and we can show that

$$\begin{aligned}
f_{n+1}(s,X_{n+1}(s;t,x,v),V_{n+1}(s;t,x,v))&\\
=f_0(X_{n+1}(0;t,x,v),V_{n+1}(0;t,x,v))&=\mathop{\mathrm{const}}\end{aligned}$$

and that $f\_{n+1}$ satisfies the approximate system by the chain rule

$$\begin{aligned}
0&=\left.\dd{s}f_{n+1}(s,X_{n+1}(s;t,x,v),V_{n+1}(s;t,x,v))\right&#124;_{s=t}\\
&=\pd_tf_{n+1}(t,x,v)+\dot X_{n+1}(t;t,x,v)\cdot\nabla_xf_{n+1}(t,x,v)\\
&\hspace{7.5em}+\dot V_{n+1}(t;t,x,v)\cdot\nabla_vf_{n+1}(t,x,v)\\
&=\pd_tf_{n+1}(t,x,v)+v\cdot\nabla_xf_{n+1}(t,x,v)+\gamma E_n(t,x)\cdot\nabla_vf_{n+1}(t,x,v).\end{aligned}$$

Also, $f\_{n+1}$ has compact support for each $t$ since the
characteristic does not blow up; finally we have
$f\_{n+1}\in C^1(\mathbb{R}^+,C\_c^1(\mathbb{R}^6))$.

Although the approximate solution is unique when given the initial term
$f\_0(t,x,v)=f\_0(x,v)$, we do not care of its uniqueness, but only the
existence.

In this section, we fix an approximate solution $f\_n$.

##### Local a priori estimates

Recall that the characteristic curves of $f\_n$ are solutions of the
system

$$\left\{\ \begin{alignedat}{2}
\dot X_{n+1}(s;t,x,v)&=V_{n+1}(s,t,x,v)\\
\dot V_{n+1}(s;t,x,v)&=\gamma E_n(s,X_{n+1}(s;t,x,v)).
\end{alignedat}\right.$$

Firstly, the volume preserving property still holds for our approximate
system. Therefore, we have

$$\&#124;\rho_n(t)\&#124;_1=\mathop{\mathrm{const}},\quad\&#124;f_n(t)\&#124;_p=\mathop{\mathrm{const}}.$$

Next, we prove local-time bounds on fields $E\_n$ and its spatial
derivative $\nabla\_xE\_n$. The bounds crucially act in the proof of
convergence of $f\_n$. Note that $\nabla\_xE\_n$ is a gradient of a
vector field $E\_n$, which is 9-dimensional.

Introduce the following quantity.

Define the *velocity support* or *maximal velocity*

$$Q_n(t)=\sup\{\,&#124;v&#124;:f_n(s,x,v)\ne0,\ s\in[0,t]\,\}.$$

In particular, $Q\_0$ is independent on $t$.

Let $T>0$ be a constant such that

$$T&lt;(Q_0\&#124;f_0\&#124;_\infty^{2/3}\&#124;f_0\&#124;_1^{1/3})^{-1}.$$

Then, we have the following bounds:

For $t\le T$,

$$\&#124;\rho_n(t)\&#124;_\infty+\&#124;E_n(t)\&#124;_\infty+Q_n(t)\lesssim 1$$

indendent on $n$. In addition, the support of $X\_n$ is also uniformly
bounded in $t\le T$.

For $t\le T$,

$$\&#124;\nabla_x\rho_n(t)\&#124;_\infty+\&#124;\nabla_xE_n(t)\&#124;_\infty\lesssim 1$$

independent on $n$.

The dynamics of controls among uniform norms of each quantity including
$\rho$ and $E$ can be summarized as follows:

$\log\&#124;E(t)\&#124;\_\infty$ & $\log\&#124;\rho(t)\&#124;\_\infty$ &
$\log Q(t)$,

and

$Q(t)$ & $&#124;(X,V)(t)&#124;$ &
$\int\_0^t(1+\&#124;E(s)\&#124;\_\infty)\,ds$.

Then, Gronwall's inequality saves the game for the bound of $Q$. Also,
we can observe that all functions in here are controlled by the velocity
support $Q$. For detail explanations, see the following proof.

$$\

Since

$$\&#124;\rho_n(t)\&#124;_\infty\le Q_n^3(t)\&#124;f_0\&#124;_\infty,$$

a rough estimate for $\&#124;E\&#124;\_\infty$ gives

$$\&#124;E_n(t)\&#124;_\infty\le\&#124;\rho_n(t)\&#124;_\infty^{2/3}\&#124;\rho_n(t)\&#124;_1^{1/3}\le Q_n^2(t)\&#124;f_0\&#124;_\infty^{2/3}\&#124;f_0\&#124;_1^{1/3}.$$

Let
$c(f\_0)=\&#124;f\_0\&#124;\_\infty^{2/3}\&#124;f\_0\&#124;\_1^{1/3}$ be
a constant such that $\&#124;E\_n(t)\&#124;\le cQ\_n^2(t)$. We claim
that

$$Q_n(t)\le\frac{Q_0}{1-cQ_0t}$$

for all $n$. Easily checked for $n=0$;
$Q\_0(t)\equiv Q\_0\le\frac{Q\_0}{1-cQ\_0t}$.

Assume $Q\_n(t)\le\frac{Q\_0}{1-cQ\_0t}$ for $t\in[0,T]$. Let
$f\_0(x,v)\ne0$. Since

$$\begin{aligned}
X_{n+1}(t;0,x,v)&=x+\int_0^tV_{n+1}(s';t,x,v)\,ds',\\
V_{n+1}(t;0,x,v)&=v+\int_0^t\gamma E_n(s',X_{n+1}(s;t,x,v))\,ds',\end{aligned}$$

an inequality

$$\begin{aligned}
&#124;V_{n+1}(t;0,x,v)&#124;
&\le&#124;v&#124;+\int_0^t&#124;E_n(s;0,x,v)&#124;\,ds\\
&\le Q_0+c\int_0^tQ_n^2(s)\,ds\end{aligned}$$

implies

$$\begin{aligned}
Q_{n+1}(t)
&\le Q_0+c\int_0^tQ_n^2(s)\,ds\\
&\le Q_0+c\int_0^t\left(\frac{Q_0}{1-cQ_0s}\right)^2ds
=\frac{Q_0}{1-cQ_0t}.\end{aligned}$$

By induction, $Q\_n(t)\le\frac{Q\_0}{1-cQ\_0t}\lesssim 1$ for all $n$
and $t\in[0,T]$, where $T&lt;(cQ\_0)^{-1}$. Furthermore,

$$\&#124;\rho_n(t)\&#124;_\infty\lesssim Q_n^3(t)\lesssim 1,\quad\&#124;E_n(t)\&#124;_\infty\lesssim Q_n^2(t)\lesssim 1.$$

The position support is bounded because

$$&#124;X_n(t;0,x,v)&#124;\le&#124;x&#124;+\int_0^t&#124;V_n(s;0,x,v)&#124;\,ds\le&#124;x&#124;+TQ_n(t)\lesssim 1.$$

Since we already have bounds for $\&#124;\rho\_n\&#124;\_\infty$ and
$\&#124;\rho\_n\&#124;\_1$, what we should estimate in order to bound
$\&#124;\nabla\_xE\_n\&#124;\_\infty$ is $\nabla\_x\rho\_n$. To do this,
we will consider $\nabla\_xX\_n$ and $\nabla\_xV\_n$. In particular, we
have

$$\begin{aligned}
\nabla_xX_n(t;t,x,v)&=\nabla_xx=(1,0,0\,;0,1,0\,;0,0,1),\\
\nabla_xV_n(t;t,x,v)&=\nabla_xv=0.\end{aligned}$$

Two inequalities

$$\begin{aligned}
&#124;\nabla_xX_{n+1}(s;t,x,v)&#124;
&=\Bigl&#124;\underbrace{(1,0,\cdots,0,1)}_{9}-\int_s^t\nabla_xV_{n+1}(s';t,x,v)\,ds'\Bigr&#124;\\
&\le\sqrt3+\int_s^t&#124;\nabla_xV_{n+1}(s';t,x,v)&#124;\,ds'\end{aligned}$$

and

$$\begin{aligned}
&#124;\nabla_xV_{n+1}(s;t,x,v)&#124;
&=&#124;\int_s^t\nabla_xE_n(s',X_{n+1}(s';t,x,v))\,ds'&#124;\\
&\le\int_s^t&#124;\nabla_xX_{n+1}(s';t,x,v)&#124;\cdot\&#124;\nabla_xE_n(s')\&#124;_\infty\,ds'\end{aligned}$$

are combined as

$$\begin{aligned}
&\qquad&#124;\nabla_xX_{n+1}(s;t,x,v)&#124;+&#124;\nabla_xV_{n+1}(s;t,x,v)&#124;\\
&\le\sqrt3+\int_s^t(1+\&#124;\nabla_xE_n(s')\&#124;_\infty)(&#124;\nabla_xX_{n+1}(s';t,x,v)&#124;+&#124;\nabla_xV_{n+1}(s';t,x,v)&#124;)\,ds'.\end{aligned}$$

By the Gronwall inequality, we get

$$&#124;\nabla_xX_{n+1}(s;t,x,v)&#124;+&#124;\nabla_xV_{n+1}(s;t,x,v)&#124;\le\sqrt3\,e^{\int_s^t(1+\&#124;\nabla_xE_n(s')\&#124;_\infty)\,ds'}$$

for $0\le s\le t$. Thus we have

$$\begin{aligned}
&#124;\nabla_x\rho_{n+1}&(t,x)&#124;
=&#124;\int\nabla_xf_0(X_{n+1}(0;t,x,v),V_{n+1}(0;t,x,v))\,dv&#124;\\
&\le\&#124;\nabla_{x,v}f_0\&#124;_\infty\int(&#124;\nabla_xX_{n+1}(0;t,x,v)&#124;+&#124;\nabla_xV_{n+1}(0;t,x,v)&#124;)\,dv\\
&\lesssim\&#124;\nabla_{x,v}f_0\&#124;_\infty Q_{n+1}^3(t)\cdot e^{\int_0^t(1+\&#124;\nabla_xE_n(s)\&#124;_\infty)\,ds}.\end{aligned}$$

Recall that

$$\begin{aligned}
\&#124;\nabla_xE_{n+1}(t)\&#124;
&\lesssim(1+\&#124;\rho_{n+1}(t)\&#124;_\infty\log^+\&#124;\nabla_x\rho_{n+1}(t)\&#124;_\infty+\&#124;\rho_{n+1}(t)\&#124;_1)\\
&\lesssim 1+\log^+\&#124;\nabla_x\rho_{n+1}(t)\&#124;_\infty\end{aligned}$$

for $t\le T$. By inserting the estimate for
$&#124;\nabla\_x\rho\_{n+1}(t,x)&#124;$, we can find a constant
$c=c(f\_0)$ such that

$$\begin{aligned}
1+\&#124;\nabla_xE_{n+1}(t)\&#124;_\infty\le c(1+\int_0^t(1+\&#124;\nabla_xE_n(s)\&#124;_\infty)\,ds)\end{aligned}$$

in $t\le T$, where
$T&lt;(Q\_0\&#124;f\_0\&#124;\_\infty^{2/3}\&#124;f\_0\&#124;\_1^{1/3})^{-1}$.
Without loss of generality, we may assume that $c$ satisfies

$$c\ge\sup_{s\in[0,T]}(1+\&#124;E_0(s)\&#124;_\infty).$$

Then, induction obtains the bound

$$1+\&#124;E_n(t)\&#124;_\infty\le ce^{ct}\le ce^{cT}\lesssim 1$$

for all $n$ and $t\le T$. The derivative of mass density is bounded
since

$$\&#124;\nabla_x\rho_{n+1}(t)\&#124;_\infty\lesssim e^{\int_0^t(1+\&#124;\nabla_xE_n(s)\&#124;_\infty)\,ds}\lesssim 1.$$

##### Convergence of approximate solution

Although most of the nonlinear systems fail to have convergent
approximate solutions so that compactness methods are often applied, the
approximate solutions constructed and investigated in the previous
subsections uniformly converges.

Let $T>0$ be a constant such that

$$T&lt;(Q_0\&#124;f_0\&#124;_\infty^{2/3}\&#124;f_0\&#124;_1^{1/3})^{-1}.$$

For $t\le T$ and $n\ge1$,

$$\&#124;f_{n+1}(t)-f_n(t)\&#124;_\infty\lesssim\int_0^t\&#124;E_n(s)-E_{n-1}(s)\&#124;_\infty\,ds.$$

For $s\le T$ and $n\ge1$,

$$\&#124;E_n(s)-E_{n-1}(s)\&#124;_\infty\lesssim\&#124;f_n(s)-f_{n-1}(s)\&#124;_\infty.$$

$f\_n$ converges to a function $f$ uniformly in
$C([0,T]\times\mathbb{R}^6)$.

For each $t,x,v$ a sequence of maps

$$s\mapsto(X_n(s;t,x,v),V_n(s;t,x,v))$$

converges in $C^1([0,T],\mathbb{R}^6)$ so that its limit $(X,V)$
satisfies the equations

$$\dot X(s;t,x,v)=V(s;t,x,v),\quad\dot V(s;t,x,v)=\gamma E(s,X(s;t,x,v)),$$

where

$$E(t,x)=\frac1{4\pi}\iint\frac{(x-y)f(t,y,v)}{&#124;x-y&#124;^3}\,dv\,dy.$$

$$\

Denote

$$g(s):=&#124;X_{n+1}(s;t,x,v)-X_n(s;t,x,v)&#124;+&#124;V_{n+1}(s;t,x,v)-V_n(s;t,x,v)&#124;$$

for given $t,x,v$. The $C^1$ regularity of $f\_0$ gives

$$\begin{aligned}
&#124;f&_{n+1}(t,x,v)-f_n(t,x,v)&#124;\\
&=&#124;f_0(X_{n+1}(0;t,x,v),V_{n+1}(0;t,x,v))-f_0(X_n(0;t,x,v),V_n(0;t,x,v))&#124;\\
&\lesssim&#124;X_{n+1}(0;t,x,v)-X_n(0;t,x,v)&#124;+&#124;V_{n+1}(0;t,x,v)-V_n(0;t,x,v)&#124;\\
&=g(0).\end{aligned}$$

If an inequality

$$\sup_{s\in[0,t]}g(s)\lesssim\int_0^t\&#124;E_n(s)-E_{n-1}(s)\&#124;_\infty\,ds$$

is obtained for $t\le T$, then we are done.

Let $0\le s\le t\le T$. Because

$$\begin{aligned}
X_n(s;t,x,v)&=x-\int_s^tV_n(s';t,x,v)\,ds',\\
V_n(s;t,x,v)&=v-\int_s^t\gamma E_{n-1}(s',X_n(s;t,x,v))\,ds',\end{aligned}$$

we have two inequalities

$$\begin{aligned}
&#124;V&_{n+1}(s;t,x,v)-V_n(s;t,x,v)&#124;\\
&\le\int_s^t&#124;E_n(s',X_{n+1}(s';t,x,v))-E_{n-1}(s',X_n(s';t,x,v))&#124;\,ds'\\
&\le\int_s^t(&#124;E_n(s',X_{n+1})-E_n(s',X_n)&#124;+&#124;E_n(s',X_n)-E_{n-1}(s',X_n)&#124;)\,ds'\\
&\le\int_s^t(\&#124;\nabla_xE_n(s')\&#124;_\infty&#124;X_{n+1}(s')-X_n(s')&#124;+\&#124;E_n(s')-E_{n-1}(s')\&#124;_\infty)\,ds'\end{aligned}$$

and

$$\begin{aligned}
&#124;X_{n+1}(s;t,x,v)-X_n(s;t,x,v)&#124;\le\int_s^t&#124;V_{n+1}(s';t,x,v)-V_n(s';t,x,v)&#124;\,ds'\end{aligned}$$

for $s\in[0,t]$. By combining the two inequalities above, we get

$$\begin{aligned}
\label{ggw}
g(s)\le\int_s^ta(s')g(s')\,ds'+\int_s^t\&#124;E_n(s')-E_{n-1}(s')\&#124;_\infty\,ds',\end{aligned}$$

where $a(s):=1+\&#124;\nabla\_xE\_n(s)\&#124;\_\infty$.

Here we use a Gronwall-type inequality to bound $g(s)$. In more detail,
multiplying

$$a(s)e^{-\int_s^ta(s')ds'}$$

on the both-hand-side of ([\[ggw\]](#ggw){reference-type="ref"
reference="ggw"}), and using $a\lesssim 1$ in $t\le T$, we have

$$\begin{aligned}
&-\dd{s}\left(e^{-\int_s^ta(s')\,ds'}\int_s^ta(s')g(s')\,ds'\right)\\
&\hspace{5em}\le a(s)e^{-\int_s^ta(s')ds'}\int_s^t\&#124;E_n(s')-E_{n-1}(s')\&#124;_\infty\,ds'\\
&\hspace{5em}\lesssim\int_s^t\&#124;E_n(s')-E_{n-1}(s')\&#124;_\infty\,ds'\end{aligned}$$

Integrate from $s$ to $t$ and bound $(t-s)\le T\lesssim 1$ to get

$$\begin{aligned}
\label{abd}
e^{-\int_s^ta(s')\,ds'}\int_s^ta(s')g(s')\,ds'\lesssim\int_s^t\&#124;E_n(s')-E_{n-1}(s')\&#124;_\infty\,ds'.\end{aligned}$$

Since $e^{\int\_s^ta(s')\,ds'}\le e^{T\sup\_{s\in[0,t]}a(s)}\lesssim 1$,
the inequalities ([\[ggw\]](#ggw){reference-type="ref" reference="ggw"})
and ([\[abd\]](#abd){reference-type="ref" reference="abd"}) implies

$$\begin{aligned}
\label{rii}
g(s)\lesssim\int_0^t\&#124;E_n(s')-E_{n-1}(s')\&#124;_\infty\,ds'\end{aligned}$$

for arbitrary $s\in[0,t]$.

Notice that

$$\&#124;E_n(t)-E_{n-1}(t)\&#124;_\infty\lesssim\&#124;\rho_n(t)-\rho_{n-1}(t)\&#124;_1^{1/3}\&#124;\rho_n(t)-\rho_{n-1}(t)\&#124;_\infty^{2/3}.$$

For $L^\infty$-norm,

$$\begin{aligned}
\&#124;\rho_n(t)-\rho_{n-1}(t)\&#124;_\infty
&\le\max\{Q_n^3(t),Q_{n-1}^3(t)\}\&#124;f_n(t)-f_{n-1}(t)\&#124;_\infty\\
&\lesssim\&#124;f_n(t)-f_{n-1}(t)\&#124;_\infty.\end{aligned}$$

For $L^1$-norm, since the support of $f\_n,f\_{n-1}$ is bounded in both
directions $x,v$ in finite time,

$$\&#124;\rho_n(t)-\rho_{n-1}(t)\&#124;_1\le\&#124;f_n(t)-f_{n-1}(t)\&#124;_1\lesssim\&#124;f_n(t)-f_{n-1}(t)\&#124;_\infty$$

for $t\le T$, where $T&lt;\infty$ arbitrary.

From (i) and (ii), there is a constant $c=c(f\_0)$ such that for
$t&lt;T$,

$$\&#124;f_{n+1}(t)-f_n(t)\&#124;_\infty\le c\int_0^t\&#124;f_n(s)-f_{n-1}(s)\&#124;_\infty\,ds.$$

We can easily get with induction

$$\&#124;f_{n+1}(t)-f_n(t)\&#124;_\infty\le M\frac{(ct)^n}{n!},$$

where $M=\sup\_{s\in[0,T]}\&#124;f\_1(s)-f\_0(s)\&#124;\_\infty$.
Therefore,

$$\sum_{n=0}^\infty\&#124;f_{n+1}-f_n\&#124;_\infty\le\sup_{t\in[0,T]}Me^{ct}&lt;\infty$$

implies $f\_n$ uniformly converges in $C([0,T]\times\mathbb{R}^6)$.

Write

$$X(s)=X(s;t,x,v),\qquad V(s)=V(s;t,x,v)$$

for given $t,x,v$. Recall that $g$ measures the difference between
$(X\_{n+1},V\_{n+1})$ and $(X\_n,V\_n)$. By the inequality $(\ref{rii})$
and the result in (ii),

$$\begin{aligned}
\sup_{s\in[0,T]}g(s)\lesssim\int_0^T\&#124;E_n(s)-E_{n-1}(s)\&#124;_\infty\lesssim T\&#124;f_n-f_{n-1}\&#124;_\infty.\end{aligned}$$

Then, the uniform convergence of characteristics $(X\_n,V\_n)$ is clear
by the absolute convergence of the series
$\sum\&#124;f\_{n+1}-f\_n\&#124;\_\infty$.

Also for the uniform convergence of $(\dot X\_n,\dot V\_n)$, it is
proved by the absolute convergence of the series
$\sum\&#124;f\_{n+1}-f\_n\&#124;\_\infty$ since

$$\begin{aligned}
&\&#124;\dot X_{n+1}-\dot X_n\&#124;_\infty=\&#124;V_{n+1}-V_n\&#124;_\infty,\\
&\&#124;\dot V_{n+1}-\dot V_n\&#124;_\infty\le\&#124;\nabla_xE_n\&#124;_\infty\&#124;X_{n+1}-X_n\&#124;_\infty+\&#124;E_n-E_{n-1}\&#124;_\infty,\end{aligned}$$

yielding

$$\&#124;\dot X_{n+1}-\dot X_n\&#124;_\infty+\&#124;\dot V_{n+1}-\dot V_n\&#124;_\infty\lesssim\&#124;f_n-f_{n-1}\&#124;_\infty.$$

Then, by limiting the both-hand-side of equations

$$\dot X_n(s)=V_n(s),\qquad \dot V_n(s)=\gamma E_{n-1}(s,X_n(s)),$$

we easily get

$$\dot X(s)=V(s),\qquad \dot V(s)=\gamma E(s,X(s)).$$

<b> Theorem. </b>\[Local existence\]
Let $f\_n$ be an approximate solution. Then, there is a constant
$T=T(f\_0)>0$ be a constant such that the limit $f$ of $f\_n$ is a
classical solution of the Cauchy problem for the Vlasov-Poisson system
with time domain $[0,T]$.

Take $T$ such that
$T&lt;(Q\_0\&#124;f\_0\&#124;\_\infty^{2/3}\&#124;f\_0\&#124;\_1^{1/3})^{-1}$.
Let $X(s;t,x,v)$ and $V(s;t,x,v)$ be the limits of $X\_n(s;t,x,v)$ and
$V\_n(s;t,x,v)$ for given $t,x,v$. Notice that

$$\begin{aligned}
f(t,x,v)=\lim_{n\to\infty}f_n(t,x,v)&=\lim_{n\to\infty}f_0(X_n(0;t,x,v),V_n(0;t,x,v))\\
&=f_0(X(0;t,x,v),V(0;t,x,v)),\end{aligned}$$

which shows $f$ is $C^1$ since $f\_0$ and $(X,V)$ are $C^1$. We can
check it solves the system by expand the right-hand-side of

$$0=\dd{s}f(s,X(s;t,x,v),V(s;t,x,v))&#124;_{s=t}$$

using the chain rule. The compact support is by the fact that
characteristic curves do not blow up.

##### Uniqueness

<b> Theorem. </b>\[Uniqueness\]
Suppose $f\_1,f\_2\in C^1([0,T];C\_c^1(\mathbb{R}^6))$ are classical
solutions of the Cauchy problem for the Vlasov-Poisson system with a
common initial data $f\_0$. Then, $f\_1=f\_2$.

As we did in (i) and (ii) of Lemma 2.3, we can obtain

$$\&#124;f_1(t)-f_2(t)\&#124;_\infty\lesssim\int_0^t\&#124;f_1(s)-f_2(s)\&#124;_\infty\,ds$$

for $t\le T$. By the Gronwall lemma, we get

$$\int_0^t\&#124;f_1(s)-f_2(s)\&#124;_\infty\le0.$$

##### Prolongation criterion

We give in this last subsection a sufficient condition for a local
classical solution $f$ to be global.

Let $f\in C^1([0,T];C\_c^1(\mathbb{R}^6))$. Define for $t\in[0,T]$

$$Q(t):=\sup\{\,&#124;v&#124;:f(s,x,v)\ne0,\ s\in[0,t]\,\}.$$

Let $f$ be a classical solution of the Cauchy problem for the
Vlasov-Poisson system. If $Q(t)$ is bounded, then $f$ is continued to a
classical solution with a longer time interval.

Suppose $f\in C^1([0,T],C\_c^1(\mathbb{R}^6))$. Since $Q$ does not blow
up, we may define

$$Q(T):=\lim_{t\uparrow T}Q(t).$$

We are going to apply the local existence result for a new problem, in
which we write $\widetilde f$ for the solution, with initial condition
$\widetilde f(0,x,v):=f(t\_0,x,v)$ for some $t\_0&lt;T$. In Section 2.3,
we have shown the length of time interval for existence $T$ is given by
the condition

$$T&lt;(Q_0\&#124;f_0\&#124;_\infty^{2/3}\&#124;f_0\&#124;_1^{1/3})^{-1}.$$

It means that, if we arrange it for the new solution $\widetilde f$, the
interval of existence of $\widetilde f$ has in fact a lower bound
$\widetilde T>0$ that depends only on $Q(T)$ for any new initial time
$t\_0$; it is because the monotonicity of $Q$ says
$Q(T)^{-1}&lt;Q(t\_0)^{-1}$ and the volume preservation implies
$\&#124;f\_0\&#124;\_\infty=\&#124;f(t\_0)\&#124;\_\infty$ and
$\&#124;f\_0\&#124;\_1=\&#124;f(t\_0)\&#124;\_1$. In other words, we can
take any $\widetilde T$ such that

$$\widetilde T&lt;(Q(T)\&#124;f_0\&#124;_\infty^{2/3}\&#124;f_0\&#124;_1^{1/3})^{-1}.$$

Note that the bound does not depend on $t\_0$ but only on its upper
bound $T$.

Set $t\_0=T-\frac12\widetilde T$ so that
$t\_0&lt;T&lt;t\_0+\widetilde T$. Then, we can construct a new solution
in $C^1([0,t\_0+\widetilde T),C\_c^1(\mathbb{R}^6))$ by pasting
solutions $f\in C^1([0,T],C\_c^1(\mathbb{R}^6))$ and
$\widetilde f\in C^1([t\_0,t\_0+\widetilde T],C\_c^1(\mathbb{R}^6))$.

If the following statement holds, then Theorem 1.1 is true: every
(local) classical solution $f$ with a given initial data
$f\_0\in C\_c^1(\mathbb{R}^6)$ satisfies $Q(t)\le h(t)$ for a continuous
function $h:[0,\infty)\to[0,\infty)$.

Suppose $f\in C^1([0,T\_{max}),C\_c^1(\mathbb{R}^6))$ for
$T\_{max}&lt;\infty$ is the maximal solution with initial data $f\_0$.
Since $Q$ is bounded on $[0,T\_{max}]$, we can apply the previous
proposition, which contradicts to the maximality of $T\_{\max}$. Hence
$T\_{max}=\infty$, and the solution $f$ is prolonged forever.

#### Global existence

Let $f\_0\in C\_c^1(\mathbb{R}^6,[0,\infty))$ and $p>\frac{33}{17}$. The
classical solution $f$ of the Cauchy problem for the Vlasov-Poisson
system with an initial data $f\_0$ has a constant $c=c(f\_0,p)$ such
that

$$Q(t)\le c(1+t)^p.$$

##### Time averaging

Fix a (local) classical solution $f$. If we had an integral inequality

$$Q(t)-Q(t-\Delta)\lesssim\int_{t-\Delta}^tQ(s)^a\,ds$$

for some constant $0\le a\le1$, then we would be able to prove that

$$\begin{aligned}
\label{gjg}
Q(t)\lesssim\begin{cases}(1+t)^{\frac1{1-a}}&,0\le a&lt;1\\e^{ct}&,a=1\end{cases}\end{aligned}$$

using the nonlinear Gronwall lemma. To obtain this integral inequality,
we may try as follows: if we got an estimate on the field

$$\&#124;E(t)\&#124;_\infty\lesssim Q(t)^a,$$

then for any $t,\widehat x,\widehat v$ such that
$f(t,\widehat x,\widehat v)\ne0$ and for any $\Delta>0$ we have

$$&#124;v-V(t-\Delta;t,\widehat x,\widehat v)&#124;=&#124;\int_{t-\Delta}^t\gamma E(s,X(s;t,\widehat x,\widehat v))\,ds&#124;\lesssim\int_{t-\Delta}^tQ(s)^a\,ds,$$

so there would be a constant $c=c(f\_0)$ such that

$$\begin{aligned}
&#124;v&#124;&\le&#124;V(t-\Delta;t,\widehat x,\widehat v)&#124;+c\int_{t-\Delta}^tQ(s)^a\,ds\\
&\le Q(t-\Delta)+c\int_{t-\Delta}^tQ(s)^a\,ds,\end{aligned}$$

which deduces

$$Q(t)\le Q(t-\Delta)+c\int_{t-\Delta}^tQ(s)^a\,ds.$$

However, an optimized version of the estimate in (i) of Lemma 1.2 that
uses $\&#124;\rho(t)\&#124;\_{5/3}\lesssim 1$ gives only

$$\&#124;E(t)\&#124;_\infty\lesssim\&#124;\rho(t)\&#124;_\infty^{4/9}\&#124;\rho(t)\&#124;_{5/3}^{5/9}\lesssim(Q(t)^3)^{4/9}\cdot1^{5/9}=Q(t)^{4/3},$$

so we need another approach because $4/3>1$. Our strategy is to average
in the time direction. Precisely, we estimate the averaged field

$$\frac1\Delta\int_{t-\Delta}^t&#124;E(s,X(s;t,\widehat x,\widehat v))&#124;\,ds\lesssim Q(t)^a$$

for arbitrary $t,\widehat x,\widehat v$ and for suitably chosen
$\Delta$. Then, we would get a weaker inequality

$$Q(t)-Q(t-\Delta)\lesssim\Delta\cdot Q(t)^a,$$

which is also able to deduce ([\[gjg\]](#gjg){reference-type="ref"
reference="gjg"}). The detailed proof of
([\[gjg\]](#gjg){reference-type="ref" reference="gjg"}) will be
presented in Section 3.4.

Fix $(t,\widehat x,\widehat v)\in\mathbb{R}^+\times\mathbb{R}^6$. We
will write

$$\widehat X(s):=X(s;t,\widehat x,\widehat v)\quad\text{and}\quad\widehat V(s):=V(s;t,\widehat x,\widehat v).$$

Also, we will use the notations

$$X(s):=X(s;t,x,v)\quad\text{and}\quad V(s):=V(s;t,x,v)$$

assuming $x,v$ are given without any confusion. Symbols $y$ and $w$ are
always used for $X(s)$ and $V(s)$ at time $s$ especially when applying
volume preserving coordinates transformation
$(x,v)\mapsto(X(s),V(s))=(y,w)$.

Now, our ultimate goal is to bound the integral

$$\begin{aligned}
\int_{t-\Delta}^t&#124;E(s,\widehat X(s))&#124;\,ds
&\le\frac1{4\pi}\int_{t-\Delta}^t\iint\frac{f(s,y,w)}{&#124;y-\widehat X(s)&#124;^2}\,dw\,dy\,ds\\
&=\frac1{4\pi}\int_{t-\Delta}^t\iint\frac{f(t,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,dv\,dx\,ds.\end{aligned}$$

The main difficulty of this integral is that
$&#124;y-\widehat X(s)&#124;^{-2}$ is not integrable with respect to $y$
on the region where $&#124;y&#124;$ is large; the inverse square has too
slow decay rate to be integrable in three dimesional space
$\mathbb{R}^3$.

Then, we want to find a lower bound of the relative position vector
$&#124;X(s)-\widehat X(s)&#124;$ assuming it is large. When the distance
between $X(s)$ and $\widehat X(s)$ is sufficiently large so that the
interaction between particles at positions $X(s)$ and $\widehat X(s)$ is
sufficiently weak, the distance will change almost linearly in both
velocity and time. Intuitively, we can write

$$&#124;X(s)-\widehat X(s)&#124;\gg1\mathchoice{\quad\Longrightarrow\quad}{\,\Rightarrow\,}{\,\Rightarrow\,}{\,\Rightarrow\,}X(s)-\widehat X(s)\approx (v-\widehat v)(s-c_1)+c_2,$$

where $c\_1,c\_2$ are constants that depend on
$(t,x,v,\widehat x,\widehat v)$.

Then, here the time averaging plays its role: interchange the integral
as follows:

$$\int_{t-\Delta}^t\iint\frac{f(t,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,dv\,dx\,ds=\iint f(t,x,v)\left(\int_{t-\Delta}^t\frac{ds}{&#124;X(s)-\widehat X(s)&#124;^2}\right)\,dv\,dx.$$

The time function
$&#124;X(s)-\widehat X(s)&#124;^{-2}\approx&#124;(v-\widehat v)(s-c\_1)+c\_2&#124;^{-2}$
is integrable in time direction, and the time integration on a set
$\\{s:&#124;(v-\widehat v)(s-c\_1)+c\_2&#124;\ge r\\}$ for a proper
radius $r$ will be approximately $(&#124;v-\widehat v&#124;r)^{-1}$. For
details, see Proposition 3.3. It means that the singularity issue of a
spatial function is changed to an estimate problem for a function of
velocity. Finally by taking $r$ such that
$(&#124;v-\widehat v&#124;r)^{-1}\lesssim&#124;v&#124;^2$, the kinetic
energy bounds the quantity what we want.

##### Lemmas

The following lemma suggests an appropriate way to choose the time
averaging interval $\Delta$.

Let $P>0$. Suppose $s\le[t-\Delta,t]$, where

$$\Delta\cdot\sup_{s\in[0,t]}\&#124;E(s)\&#124;_\infty\le\frac P4.$$

If $&#124;v&#124;&lt;P$, then $&#124;V(s)&#124;&lt;2P$.

If $&#124;v&#124;\ge P$, then
$\frac12&#124;v&#124;\le&#124;V(s)&#124;\le2&#124;v&#124;$.

If $&#124;v-\widehat v&#124;&lt;P$, then
$&#124;V(s)-\widehat V(s)&#124;&lt;2P$.

If $&#124;v-\widehat v&#124;\ge P$, then
$\frac12&#124;v-\widehat v&#124;\le&#124;V(s)-\widehat V(s)&#124;\le2&#124;v-\widehat v&#124;$.

Note that

$$&#124;v-V(s)&#124;\le\int_s^t&#124;E(s',X(s'))&#124;\,ds'\le\Delta\cdot\sup_{s'\in[0,t]}\&#124;E(s')\&#124;_\infty\le\frac P4,$$

and similarly

$$&#124;\widehat v-\widehat V(s)&#124;\le\frac P4.$$

For (i),

$$&#124;V(s)&#124;\le&#124;v&#124;+&#124;v-V(s)&#124;&lt;P+\frac P4&lt;2P.$$

For (ii),

$$&#124;V(s)&#124;\ge&#124;v&#124;-&#124;v-V(s)&#124;\ge&#124;v&#124;-\frac P4\ge\frac12&#124;v&#124;$$

and

$$&#124;V(s)&#124;\le&#124;v&#124;+&#124;v-V(s)&#124;\le&#124;v&#124;+\frac P4\le2&#124;v&#124;.$$

For (iii)

$$&#124;V(s)-\widehat V(s)&#124;\le&#124;V(s)-v&#124;+&#124;v-\widehat v&#124;+&#124;\widehat v-\widehat V(s)&#124;&lt;\frac P4+P+\frac P4&lt;2P.$$

For (iv),

$$&#124;V(s)-\widehat V(s)&#124;\ge-&#124;V(s)-v&#124;+&#124;v-\widehat v&#124;-&#124;\widehat v-\widehat V(s)&#124;\ge-\frac P4+&#124;v-\widehat v&#124;-\frac P4\ge\frac12&#124;v-\widehat v&#124;$$

and

$$&#124;V(s)-\widehat V(s)&#124;\le&#124;V(s)-v&#124;+&#124;v-\widehat v&#124;+&#124;\widehat v-\widehat V(s)&#124;\le\frac P4+&#124;v-\widehat v&#124;+\frac P4\le2&#124;v-\widehat v&#124;.$$

From now for $0\le\Delta\le t$, let it be such that

$$\Delta\cdot\sup_{s\in[0,t]}\&#124;E(s)\&#124;_\infty\le\frac P4.$$

If $v$ satisfies $&#124;v-\widehat v&#124;\ge P$, then there is
$s\_0\in[t-\Delta,t]$ such that

$$&#124;X(s)-\widehat X(s)&#124;\ge\frac14&#124;v-\widehat v&#124;&#124;s-s_0&#124;$$

for all $s\in[t-\Delta,t]$ and $x\in\mathbb{R}^3$.

Let $Z(s):=X(s)-\widehat X(s)$ be the relative position vector. Then,

$$\begin{aligned}
Z'(s)&=V(s)-\widehat V(s),\\
Z''(s)&=\gamma[E(s,X(s),V(s))-E(s,\widehat X(s),\widehat V(s))],\end{aligned}$$

so the Taylor expansion at $s\_0\in[t-\Delta,t]$ gives

$$Z(s)=\left[Z(s_0)+Z'(s_0)(s-s_0)\right]+\left[\frac{Z''(\sigma)}2(s-s_0)^2\right]$$

for some $\sigma$ between $s,s\_0$.

Choose

$$s_0=\mathop{\mathrm{arg\,min}}_{s\in[t-\Delta,t]}&#124;Z(s)&#124;.$$

If $s\_0=t$ or $s\_0=t-\Delta$, then $\dd{s}&#124;Z(s\_0)&#124;^2\le0$
or $\dd{s}&#124;Z(s\_0)&#124;^2\ge0$ respectively. Otherwise,
$s\_0\in(t-\Delta,t)$, and $\dd{s}&#124;Z(s\_0)&#124;^2=0$. Hence

$$Z(s_0)\cdot Z'(s_0)(s-s_0)=\frac12\dd{s}&#124;Z(s_0)&#124;^2(s-s_0)\ge0$$

for $s\in[t-\Delta,t]$, and

$$&#124;Z(s_0)+Z'(s_0)(s-s_0)&#124;^2\ge&#124;Z'(s_0)(s-s_0)&#124;^2.$$

The condition $&#124;v-\widehat v&#124;\ge P$ implies

$$&#124;Z'(s)&#124;\ge\frac12&#124;v-\widehat v&#124;$$

for $s\in[t-\Delta,t]$. Therefore,

$$&#124;Z(s_0)+Z'(s_0)(s-s_0)&#124;\ge&#124;Z'(s_0)(s-s_0)&#124;\ge\frac12&#124;v-\widehat v&#124;&#124;s-s_0&#124;,$$

and

$$\begin{aligned}
&#124;\frac{Z''(\sigma)}2(s-s_0)^2&#124;
&\le\&#124;E(t)\&#124;_\infty(s-s_0)^2
\le\&#124;E(t)\&#124;_\infty\Delta&#124;s-s_0&#124;\\
&\le\frac P4&#124;s-s_0&#124;
\le\frac14&#124;v-\widehat v&#124;&#124;s-s_0&#124;\end{aligned}$$

yields

$$&#124;X(s)-\widehat X(s)&#124;=&#124;Z(s)&#124;\ge\frac14&#124;v-\widehat v&#124;&#124;s-s_0&#124;.$$

##### Divide and conquer

We estimate the integral of $&#124;E(s,\widehat X(s))&#124;$ by dividing
the integral region $[t-\Delta,t]\times\mathbb{R}^6$ into three regions
as:

$$\begin{aligned}
U:&=\{\,(s,x,v):\ s\in[t-\Delta,t],\quad&#124;v-\widehat v&#124;\ge P,\\
&\hspace{6em}&#124;X(s)-\widehat X(s)&#124;\ge R\max\{&#124;v&#124;^{-3},&#124;v-\widehat v&#124;^{-3}\}\,\},\\
B:&=\{\,(s,x,v):\ s\in[t-\Delta,t],\quad&#124;v-\widehat v&#124;\ge P,\quad&#124;v&#124;\ge P,\\
&\hspace{6em}&#124;X(s)-\widehat X(s)&#124;&lt;R\max\{&#124;v&#124;^{-3},&#124;v-\widehat v&#124;^{-3}\}\,\},\\
G:&=\{\,(s,x,v):\ s\in[t-\Delta,t],\quad\min\{&#124;v-\widehat v&#124;,&#124;v&#124;\}&lt;P\,\}\\
&=[t-\Delta,t]\times\mathbb{R}^6\setminus(U\cup B).\end{aligned}$$

The constants $P>0$ and $R>0$ will be determined later.

$$\iiint_U\lesssim R^{-1}.$$

Write

$$r:=R\max\{&#124;v&#124;^{-3},&#124;v-\widehat v&#124;^{-3}\}.$$

Then,

$$U=\{\,(s,x,v):s\in[t-\Delta,t],\quad&#124;v-\widehat v&#124;\ge P,\quad &#124;X(s)-\widehat X(s)&#124;\ge r\,\}.$$

Since $&#124;X(s)-\widehat X(s)&#124;\ge r$ on $U$,

$$\begin{aligned}
\int_{&#124;s-s_0&#124;&lt;\frac{4r}{&#124;v-\widehat v&#124;}}\frac{\chi_U(s,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,ds
\le\frac1{r^2}\int_{&#124;s-s_0&#124;&lt;\frac{4r}{&#124;v-\widehat v&#124;}}ds=8\frac1{&#124;v-\widehat v&#124;r}.\end{aligned}$$

Since $&#124;v-\widehat v&#124;\ge P$ on $U$ so that
$&#124;X(s)-\widehat X(s)&#124;\ge\frac14&#124;v-\widehat v&#124;&#124;s-s\_0&#124;$
by the previous lemma,

$$\begin{aligned}
\int_{&#124;s-s_0&#124;\ge\frac{4r}{&#124;v-\widehat v&#124;}}\frac{\chi_U(s,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,ds
&\le16\int_{&#124;s-s_0&#124;\ge\frac{4r}{&#124;v-\widehat v&#124;}}\frac1{&#124;v-\widehat v&#124;^2&#124;s-s_0&#124;^2}\,ds\\
&\le32\int_{4r}^\infty\frac1{&#124;v-\widehat v&#124;^3&#124;s-s_0&#124;^2}d(&#124;v-\widehat v&#124;&#124;s-s_0&#124;)\\
&=8\frac1{&#124;v-\widehat v&#124;r}.\end{aligned}$$

Therefore,

$$\int\frac{\chi_U(s,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,ds\lesssim\frac1{&#124;v-\widehat v&#124;r}=R^{-1}\frac{\min\{&#124;v&#124;^3,&#124;v-\widehat v&#124;^3\}}{&#124;v-\widehat v&#124;}\le R^{-1}&#124;v&#124;^2$$

so that we have

$$\begin{aligned}
\iiint_U\frac{f(t,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,dv\,dx\,ds
&=\iint f(t,x,v)\left(\int\frac{\chi_U(s,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,ds\right)\,dv\,dx\\
&\lesssim R^{-1}\iint&#124;v&#124;^2f(t,x,v)\,dv\,dx\lesssim R^{-1}.\end{aligned}$$

$$\iiint_B\lesssim\Delta\cdot R\log\frac{4Q(t)}P.$$

Write

$$r:=R\max\{&#124;v&#124;^{-3},&#124;v-\widehat v&#124;^{-3}\}.$$

Then,

$$B=\{\,(s,x,v):s\in[t-\Delta,t],\quad&#124;v&#124;\ge P,\quad&#124;v-\widehat v&#124;\ge P,\quad &#124;X(s)-\widehat X(s)&#124;&lt;r\,\}.$$

We need to control the union of two regions

$$&#124;X(s)-\widehat X(s)&#124;&lt;R&#124;v&#124;^{-3}\quad\text{and}\quad&#124;X(s)-\widehat X(s)&#124;&lt;R&#124;v-\widehat v&#124;^{-3}.$$

If we integrate $&#124;X(s)-\widehat X(s)&#124;^{-2}$ with respect to
$y$ on these regions, then we get integrands $&#124;v&#124;^{-3}$ and
$&#124;v-\widehat v&#124;^{-3}$, which has singularities on regions at
which $&#124;v&#124;$, $&#124;v-\widehat v&#124;$ are respectively small
and large; an inverse cubic function is both sharp and broad in three
dimensional space $\mathbb{R}^3$. The integral of inverse cube on the
region $&#124;v&#124;\sim\infty$ is bounded by $Q$, and the region
$&#124;v&#124;\sim0$ is bounded by $P$.

For each $s\in[t-\Delta,t]$, if we apply the coordinates transformation
$(x,v)\mapsto(y,w)=(X(s),V(s))$, then since $&#124;v&#124;\ge P$ implies

$$\frac12P\le\frac12&#124;v&#124;\le&#124;w&#124;\le Q(s)\quad\text{and}\quad&#124;w&#124;\le2&#124;v&#124;,$$

we have

$$\begin{aligned}
\int_{&#124;v&#124;\ge P}&\int_{&#124;X(s)-\widehat X(s)&#124;&lt;R&#124;v&#124;^{-3}}\frac{f(t,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,dx\,dv\\
&\lesssim\int_{\frac12P\le&#124;w&#124;\le Q(s)}\int_{&#124;y-\widehat X(s)&#124;&lt;R&#124;V(t;s,y,w)&#124;^{-3}}\frac1{&#124;y-\widehat X(s)&#124;^2}\,dy\,dw\\
&\simeq R\int_{\frac12P\le&#124;w&#124;\le Q(t)}&#124;V(t;s,y,w)&#124;^{-3}\,dw\\
&\le8R\int_{\frac12P\le&#124;w&#124;\le Q(t)}&#124;w&#124;^{-3}\,dw\\
&\simeq R\log\frac{2Q(t)}P.\end{aligned}$$

Similarly but using the fact that $&#124;v-\widehat v&#124;\le P$
implies

$$\frac12P\le\frac12&#124;v-\widehat v&#124;\le&#124;w-\widehat V(s)&#124;\le 2Q(s)\quad\text{and}\quad&#124;w-\widehat V(s)&#124;\le2&#124;v-\widehat v&#124;,$$

we have

$$\int_{&#124;v-\widehat v&#124;\ge P}\int_{&#124;X(s)-\widehat X(s)&#124;&lt;R&#124;v-\widehat v&#124;^{-3}}\frac{f(t,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,dx\,dv\lesssim R\log\frac{4Q(t)}P.$$

Therefore,

$$\iiint_B\frac{f(t,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,dv\,dx\,ds\lesssim\Delta\cdot R\log\frac{4Q(t)}P.$$

$$\iiint_G\lesssim\Delta\cdot P^{4/3}.$$

Note

$$\begin{aligned}
G=\ &\{\,(s,x,v):s\in[t-\Delta,t],\quad&#124;v&#124;&lt;P\}\\
\cup\ &\{\,(s,x,v):s\in[t-\Delta,t],\quad&#124;v-\widehat v&#124;&lt;P\}.\end{aligned}$$

Since $&#124;v&#124;&lt;P$ implies $&#124;V(s;t,x,v)&#124;&lt;2P$, the
coordinates transformation $(x,v)\mapsto(y,w)=(X(s),V(s))$ gives

$$\begin{aligned}
\iint_{&#124;v&#124;&lt;P}&\frac{f(t,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,dv\,dx\\
&\le\int\frac1{&#124;y-\widehat X(s)&#124;^2}\int_{&#124;w&#124;&lt;2P}f(s,y,w)\,dw\,dy\\
&\lesssim\&#124;\int_{&#124;w&#124;&lt;2P}f(s,y,w)\,dw\&#124;_{L_y^\infty}^{4/9}\cdot\&#124;\int_{&#124;w&#124;&lt;2P}f(s,y,v)\,dv\&#124;_{L_y^{5/3}}^{5/9}\\
&\lesssim((2P)^3)^{4/9}\cdot1^{5/9}\simeq P^{4/3}.\end{aligned}$$

Similarly

$$\iint_{&#124;v-\widehat v&#124;&lt;P}\frac{f(t,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,dv\,dx\lesssim P^{4/3},$$

so we are done.

##### Bound on the velocity support

Finally, with above estimates, we prove that $Q$ does not blow up.

Let $c=c(f\_0)$ be a constant such that

$$\&#124;E(s)\&#124;_\infty\le cQ(s)^{4/3}$$

for all $s\in\mathbb{R}^+$, and define

$$\Delta:=\frac{Q(t)^{4/11}}4\cdot\frac1{cQ(t)^{4/3}}=\frac1{4c}\,Q(t)^{-32/33}.$$

If $\Delta&lt;t$, then for any $a>\frac{16}{33}$,

$$Q(t)-Q(t-\Delta)\lesssim_a\Delta\cdot Q(t)^a.$$

Let $(d,e)=(\frac4{11},\frac{16}{33})$ and

$$P=Q(t)^d\quad\text{and}\quad R=Q(t)^e(\log\frac{4Q(t)}P)^{-1/2}.$$

Then, $\Delta\cdot cQ(t)^{4/3}=\frac P4$. Since

$$\Delta\cdot\sup_{s\in[0,t]}\&#124;E(s)\&#124;_\infty=\frac P4\cdot\frac{\sup_{s\in[0,t]}\&#124;E(s)\&#124;_\infty}{cQ(t)^{4/3}}\le\frac P4,$$

we can use the estimates on $U$, $B$, and $G$ :

$$\begin{aligned}
\int_{t-\Delta}^t&&#124;E(s,\widehat X(s))&#124;\,ds
\le\int_{t-\Delta}^t\iint\frac{f(t,x,v)}{&#124;X(s)-\widehat X(s)&#124;^2}\,dv\,dx\,ds\\
&\lesssim R^{-1}+\Delta\cdot R\log\frac{4Q(t)}P+\Delta\cdot P^{4/3}\\
&\simeq\Delta\cdot\left(Q(t)^{4/3}P^{-1}R^{-1}+R\log\frac{4Q(t)}P+P^{4/3}\right)\\
&=\Delta\cdot\left(Q(t)^{4/3-d-e}\sqrt{\log\frac{4Q(t)}P}+Q(t)^e\sqrt{\log\frac{4Q(t)}P}+Q(t)^{4d/3}\right).\end{aligned}$$

Because $d=\frac4{11}$ and $e=\frac{16}{33}$ satisfy

$$\frac43-d-e=e=\frac43d=\frac{16}{33},$$

we get

$$\int_{t-\Delta}^t&#124;E(s,\widehat X(s))&#124;\,ds\lesssim\Delta\cdot Q(t)^{16/33}\log^{1/2}Q(t)$$

and the desired result by setting $\widehat x$ and $\widehat v$ to be
arbitrarily but $f(t,\widehat x,\widehat v)\ne0$.

Suppose $\Delta>0$ had no lower bound. If we define an increasing
function

$$j(z):=e^{\frac1{1-a}z^{1-a}},$$

that is, $j$ is defined as a solution of a differential equation
$j'(z)=z^{-a}j(z)$, then the inequality in the above corollary

$$Q(t)-Q(t-\Delta)\le c\Delta\cdot Q(t)^a$$

with $c=c(f\_0,a)$ would give

$$\begin{aligned}
\widetilde Q(t)-\widetilde Q(t-\Delta)
&=j(Q(t))-j(Q(t-\Delta))\\
&\le j(Q(t))-j(Q(t)-c\Delta\cdot Q(t)^a)\\
&\le c\Delta\cdot Q(t)^a\ j'(Q(t))\\
&=c\Delta\cdot j(Q(t))=c\Delta\cdot\widetilde Q(t),\end{aligned}$$

where $\widetilde Q(t):=j(Q(t))$. It derives an inequality including the
left lower Dini's derivative

$$D_-(e^{ct}\widetilde Q(t))\le0,$$

and this proves $\widetilde Q(t)\le\widetilde Q(0)e^{ct}$, which implies
$Q(t)\lesssim\_a(1+t)^{\frac1{1-a}}$. However, unfortuately there is a
lower bound for $\Delta$. See the proof of Corollary 3.6, and check that
the lower bound is required:

$$R^{-1}\lesssim\Delta\cdot Q(t)^{4/3}P^{-1}R^{-1}.$$

Thereby, we must use another method to justify
$Q(t)\lesssim\_a(1+t)^{\frac1{1-a}}$.

For $\frac{16}{33}&lt;a&lt;1$,

$$Q(t)\lesssim_a(1+t)^{\frac1{1-a}}.$$

Let $c=c(f\_0)$ be a constant such that
$\&#124;E(s)\&#124;\_\infty\le cQ(s)^{4/3}$ for all $s\in\mathbb{R}^+$.
Since

$$Q(t)-Q(s)\le\int_s^t\&#124;E(s')\&#124;_\infty\,ds'$$

so that $Q$ is a nondecreasing continuous function, there is a unique
$T\_1=T\_1(f\_0)$ such that $T\_1=Q(T\_1)^{-32/33}$. Define a function
$\Delta:(T\_1,\infty)\to(0,\infty)$ such that

$$\Delta(s):=\frac1{4c}\,Q(s)^{-32/33}.$$

Then, by Corollary 3.6, $t>T\_1$ implies

$$Q(t)-Q(t-\Delta)\lesssim_a\Delta\cdot Q(t)^a.$$

Inductively define a decreasing sequence $\\{t\_i\\}\_i$ such that

$$t_0:=t,\qquad t_{i+1}:=t_i-\Delta(t_i).$$

The differences have a uniform bound

$$t_i-t_{i+1}=\frac1{4c}\,Q(t_i)^{-32/33}\ge\frac1{4c}\,Q(t)^{-32/33},$$

so there is a positive integer $n$ such that
$0&lt;t\_n\le T\_1&lt;t\_{n-1}$. Then,

$$\begin{aligned}
Q(t)-Q(T_1)&\le Q(t_0)-Q(t_n)
=\sum_{i=0}^{n-1}(Q(t_i)-Q(t_{i+1}))\\
&\lesssim_a\sum_{i=0}^{n-1}\Delta(t_i)\cdot Q(t_i)^a
\le\sum_{i=0}^{n-1}\Delta(t_i)\cdot Q(t)^a
\le tQ(t)^a\end{aligned}$$

yields

$$Q(t)\lesssim_a1+tQ(t)^a.$$

Thus, $1\lesssim Q(t)^a$ implies $Q(t)\lesssim(1+t)^{\frac1{1-a}}$.

{% endraw %}