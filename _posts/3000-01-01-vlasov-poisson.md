---
layout: post
title:  "Global existence of classical solutions to the Vlasov-Poisson
system"
date:    00:00:00 +0900
---
{% raw %}



<!-- more -->

## Acknowledgement {#acknowledgement .unnumbered}

This report is written in Undergraduate Research Program of Postech
during 2019 fall semester, under the support and advice of professor
Donghyun Lee.

## Vlasov-Poisson system

Consider the following Cauchy problem for the *Valsov-Poisson system*:

$$\begin{aligned}
\left\{\ \begin{alignedat}{2}
&\pd_tf+v\cdot\del_xf+\gamma E\cdot\del_vf=0,&&\qquad(t,x,v)\in\R_t^+\x\R_x^3\x\R_v^3,\\
&E(t,x)=-\del_x\Phi,\\
&\Phi(t,x)=(-\Delta_x)^{-1}\rho,&&\hspace{-2em}\lim_{|x|\to\infty}\Phi(t,x)=0,\\
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

Let $f\_0:\R^6\to[0,\infty]$ be a function. A function
$f:[0,T]\x\R^6\to\R$ is said to be a *classical solution* of the Cauchy
problem for the Vlasov-Poisson system with initial data $f\_0$ if
$f\in C^1([0,T];C\_c^1(\R^6))$ and satisfies all equations in (1) on its
domain. Further, if $f\in C^1(\R^+;C\_c^1(\R^6))$, then the classical
solution $f$ is said to be *global*.

The precise statement of the global existence theorem is as follows:

Let $f\_0\in C\_c^1(\R^6,[0,\infty))$. Then, there exists a unique
global classical solution of the Cauchy problem for the Vlasov-Poisson
system with initial data $f\_0$.

Results in 1.1 and 1.2 provide basic ingredients that will be used in
the whole article. On the other hand, results in 1.3 cannot be used in
any local existence proof because they assume the existence of
solutions, but they help understand the fundamental nature of solutions
of the Vlasov-Poisson system and are used in the proof of global
existence.

We use the asymptotic notation

$$g(t)\les h(t)\iff\exists\,c=c(f_0),\quad g(t)\le c\,h(t)$$

and

$$g(t)\simeq h(t)\iff\exists\,c,\quad g(t)=c\,h(t).$$

This report does not contain any other norms except the $L^p$ norms so
that double vertical bars always refer to the $L^p$ norms. We also omit
marginalized variables and the subscript $L$. For example,

$$\|f(t)\|_p=(\iint|f(t,x,v)|^p\,dv\,dx)^{1/p},\quad\|\rho(t)\|_p=(\int|\rho(r,x)|^p\,dx)^{1/p}.$$

### Poisson equation

For the three-dimensional boundaryless problem of the Poisson equation

$$-\Delta\Phi(x)=\rho(x)$$

in which the solution $\Phi$ vanishes at infinity, it is well-known that

$$\Phi=\tfrac1{4\pi|x|}*\rho,$$

so the electric field in the Vlasov-Poisson system is given by

$$E=-\del_x\Phi=-\del_x(\tfrac1{4\pi|x|}*\rho)=\frac{x}{4\pi|x|^3}*\rho.$$

It can be rewritten as

$$E(t,x)=\frac1{4\pi}\int\frac{(x-y)\rho(t,y)}{|x-y|^3}\,dy.$$

The nonlinearity of the system is originated from the force field $E$,
so its estimates play a crucial role in study of the nonlinear system.
Since it is given by the solution of the Poisson equation, estimates of
the Riesz potential, the convolution with a kernel of the form
$|x|^{-(d-\alpha)}$, are directly connected to estimates of the force
field.

Let $\rho\in C\_c^1(\R^d)$.

(Field estimate)

$$\|\tfrac1{|x|^{d-1}}*\rho\|_\infty\les\|\rho\|_\infty^{1-1/d}\|\rho\|_1^{1/d}$$

(Field derivative estimate) For $\log^+(x):=\max\\{0,\log x\\}$,

$$\|\del(\tfrac1{|x|^{d-1}}*\rho)\|_\infty\les1+\|\rho\|_\infty\log^+\|\del\rho\|_\infty+\|\rho\|_1.$$

Let $0\le\frac1p<\frac\alpha d<\frac1q\le1$. Since
$(d-\alpha)p<d<(d-\alpha)q$,

$$\begin{aligned}
|\tfrac1{|x|^{d-\alpha}}*\rho|
&=\int_{|x-y|<R}\frac{\rho(y)}{|x-y|^{d-\alpha}}\,dy+\int_{|x-y|\ge R}\frac{\rho(y)}{|x-y|^{d-\alpha}}\,dy\\
&\le\|\rho\|_{p'}(\int_{|y|<R}\frac{dy}{|y|^{(d-\alpha)p}})^{1/p}+\|\rho\|_{q'}(\int_{|y|\ge R}\frac{dy}{|y|^{(d-\alpha)q}})^{1/q}\\
&\simeq\|\rho\|_{p'}(\int_0^Rr^{d-1-(d-\alpha)p}\,dr)^{1/p}+\|\rho\|_{q'}(\int_R^\infty r^{d-1-(d-\alpha)q}\,dr)^{1/q}\\
&\simeq\|\rho\|_{p'}R^{\frac dp-d+\alpha}+\|\rho\|_{q'}R^{\frac dq-d+\alpha}.\end{aligned}$$

By choosing $R$ such that
$\|\rho\|\_{p'}R^{\frac dp-d+\alpha}=\|\rho\|\_{q'}R^{\frac dq-d+\alpha}$,
we get

$$\|\tfrac1{|x|^{d-\alpha}}*\rho\|_\infty\les\|\rho\|_{p'}^{\frac{1-\frac\alpha d-\frac1q}{\frac1p-\frac1q}}\|\rho\|_{q'}^{\frac{\frac1p-1+\frac\alpha d}{\frac1p-\frac1q}},$$

so the inequality

$$\|\tfrac1{|x|^{d-\alpha}}*\rho\|_\infty^{\frac1q-\frac1p}\les\|\rho\|_p^{\frac1q-\frac\alpha d}\|\rho\|_q^{\frac\alpha d-\frac1p}$$

is obtained by interchaning $p$ and $q$ with their conjugates. The
desired result gets $p=\infty$, $\alpha=1$, and $q=1$.

Let $0<R\_a\le R\_b$ be constants which will be determined later. Divide
the region radially

$$\begin{aligned}
|\del(\tfrac1{|x|^{d-1}}*\rho)|\les\del\int_{|x-y|<R_a}+\del\int_{R_a\le|x-y|<R_b}+\del\int_{R_b\le|x-y|}.\end{aligned}$$

For the first integral,

$$\begin{aligned}
\int_{|y|<R_a}\frac{\del\rho(x-y)}{|y|^{d-1}}\,dy
&\le\|\del\rho\|_\infty\int_{|y|<R_a}\frac1{|y|^{d-1}}\,dy\\
&\simeq\|\del\rho\|_\infty\int_0^{R_a}1\,dr
=R_a\|\del\rho\|_\infty.\end{aligned}$$

For the second integral,

$$\begin{aligned}
\int_{R_a\le|x-y|<R_b}\frac{\rho(y)}{|x-y|^d}\,dy
&\le\|\rho\|_\infty\int_{R_a\le|x-y|<R_b}\frac1{|x-y|^d}\,dy\\
&\simeq\|\rho\|_\infty\int_{R_a}^{R_b}\frac1r\,dr
=(\log\tfrac{R_b}{R_a})\|\rho\|_\infty.\end{aligned}$$

For the third integral,

$$\int_{R_b\le|x-y|}\frac{\rho(y)}{|x-y|^d}\,dy\le R_b^{-d}\|\rho\|_1.$$

Thus,

$$|\del(\tfrac1{|x|^{d-1}}*\rho)|\les R_a\|\del\rho\|_\infty+(\log\tfrac{R_b}{R_a})\|\rho\|_\infty+R_b^{-d}\|\rho\|_1.$$

Assuming $\rho$ is nonzero so that $\|\del\rho\|\_\infty>0$, let
$R\_a=\min\\{1,\|\del\rho\|\_\infty^{-1}\\}$ and $R\_b=1$. Since

$$\log\tfrac1{R_a}\le\log^+\|\del\rho\|_\infty\quad\text{and}\quad R_a\les\|\del\rho\|_\infty,$$

we have

$$\|\del(\tfrac1{|x|^{d-1}}*\rho)\|_\infty\les1+\|\rho\|_\infty\log^+\|\del\rho\|_\infty+\|\rho\|_1.\qedhere$$

### Characteristics and volume preservation

The Vlasov-Poisson equation is quite hyperbolic. What we mean here is
that the method of characteristic curves is useful, and it does not
regularizes the solution directly. Although we do not have an explicit
representation formula, solutions written by characteristic curves make
appropriate estimates possible.

Moreover, since the Vlasov-Poisson system is a Hamiltonian system on the
phase space $\R\_x^3\x\R\_v^3$ with the Hamiltonian
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
$(X,V)$ in $C^1([0,T],\R^6)$.

Fix $t,x,v$. Then, $f(s,X(s;t,x,v),V(s;t,x,v))=\const$.

Fix $t$, and let

$$y(s;x,v):=X(s;t,x,v)\quad\text{and}\quad w(s;x,v):=V(s;t,x,v).$$

Then, the Jacobian of coordinates transform $(x,v)\mapsto(y,w)$ is 1 for
all $s$.

Note that we have

$$\rho\in C^1([0,T];C_c^1(\R^6)),\quad\Phi\in C^1([0,T];C^{2,\alpha}(\R^6))$$

so that

$$E\in C^1([0,T];C^{1,\alpha}(\R^6))$$

by the Hölder regularity of the Poisson equation. Since a map

$$(x,v)\mapsto(v,\gamma E(t,x))$$

is globally Lipschitz with respect to $(x,v)$ for each $t$, we can apply
the Picard Lindelöf theorem.

Differentiate and use the chain rule to get

$$\begin{aligned}
\dd{s}&f(s,y,w)\\
&=\pd_tf(s,y,w)+\dot X(s;s,y,w)\cdot\del_xf(s,y,w)+\dot V(s;s,y,w)\cdot\del_vf(s,y,w)\\
&=\pd_tf(s,y,w)+w\cdot\del_xf(s,y,w)+\gamma E(s,y)\cdot\del_vf(s,y,w)=0,\end{aligned}$$

where we denote $y=X(s;t,x,v)$ and $w=V(s;t,x,v)$.

Let $J(s)=\pd{(y,w)}{(x,v)}$ be the Jacobi matrix. Because when $s=t$
the Jacobian is

$$\det J(t)=\det\pd{(x,v)}{(x,v)}=1,$$

We want to show

$$\det J(s)=\const.$$

Since

$$J^{-1}(s)\dd{s}J(s)=\pd{(x,v)}{(y,x)}\dd{s}\pd{(y,w)}{(x,v)}=\pd{(\dot y,\dot w)}{(y,w)}=\mat{0&1\\\gamma\pd{E}{y}(s,y)&0},$$

the Jacobi formula deduces that

$$\dd{s}\det J(s)=\det(s)\tr\left(J^{-1}(s)\dd{s}J(s)\right)=0.\qedhere$$

Let $f$ be a classical solution of the Cauchy problem for the
Vlasov-Poisson system. Then, for any measurable function $\beta:\R\to\R$
such that $\iint\beta\o f\_0(x,v)\,dv\,dx<\infty$, we have

$$\iint\beta\o f(t,x,v)\,dv\,dx=\const.$$

In particular,

$$\|f(t)\|_p=\const$$

for $1\le p\le\infty$.

Fix $t,s[0,T]$ and denote $y=X(s;t,x,v)$ and $w=V(s;t,x,v)$. Then,

$$\begin{aligned}
\iint\beta\o f(t,x,v)\,dv\,dx
&=\iint\beta\o f(s,X(s;t,x,v),V(s;t,x,v))\,dv\,dx\\
&=\iint\beta\o f(s,y,w)\,dw\,dy\end{aligned}$$

for $s\le T$.

To sum up our weapons obtained so far, we have the following.

If a function $f\in C^1([0,T],C\_c^1(\R^6))$ satisfies

$$\iint f(t,x,v)\,dv\,dx=\const,$$

and if we let

$$\rho(t,x)=\int f(t,x,v)\,dv,\quad E(t,x)=\frac1{4\pi}\int\frac{(x-y)\rho(t,y)}{|x-y|^3}\,dy,$$

then

$\|\rho(t)\|\_1=\const$,

$\|E(t)\|\_\infty\les\|\rho(t)\|\_\infty^{2/3}$,

$\|\del E(t)\|\_\infty\les1+\|\rho\|\_\infty\log^+\|\del\rho\|\_\infty$.

These estimates will be applied not only to the global existence proof,
which assumes the local existence, but also to approximate solutions.

Note that the volume preservation is also yielded for a approximation
scheme, which will be suggested in the next section, hence the same
results in Corollary 1.4 for the approximate solutions in the same
manner. The proof will be omitted.

### Conservation laws and moment propagation

Usual algebraic computations with Stokes' theorem get several
conservations laws, particularly including energy conservation.

Let $f$ be a classical solution of the Vlasov-Poisson system.

(Continuity equation)

$$\rho_t+\del_x\cdot j=0,\qquad\text{where}\quad j=\int vf\,dv.$$

(Energy conservation)

$$\iint|v|^2f\,dv\,dx+\gamma\int|E|^2\,dx=\const.$$

Integrate with respect to $v$ to get

$$\begin{aligned}
0&=\int f_t\,dv+\int v\cdot\del_xf\,dv\\
&=\rho_t+\del_x\cdot\int vf\,dv\\
&=\rho_t+\del_x\cdot j.\end{aligned}$$

Multiply $|v|^2$ and integrate with respect to $v$ and $x$ to get

$$\begin{aligned}
\dd{t}\iint|v|^2f\,dv\,dx
&=\iint|v|^2f_t\,dv\,dx=-\iint|v|^2\gamma E\cdot\del_vf\,dv\,dx\\
&=\iint2v\cdot\gamma Ef\,dv\,dx=-2\gamma\int\del_x\Phi\cdot j\,dx\\
&=2\gamma\int\Phi\del_x\cdot j\,dx=2\gamma\int\Phi\Delta_x\Phi_t\,dx\\
&=-\dd{t}\gamma\int|E|^2\,dx.\end{aligned}$$

Thus

$$\iint|v|^2f\,dv\,dx+\gamma\int|E|^2\,dx=\const.\qedhere$$

Kinetic energy is a type of quantities which are called moments; we call
the quantities of the form

$$\iint|v|^kf(t,x,v)\,dv\,dx$$

*moments*, with a positive real $k$. The energy conservation proves the
bound of the 2-moment, kinetic energy,

$$\iint|v|^2f(t,x,v)\,dv\,dx\les1$$

if $\gamma=+1$. In fact, a bound of kinetic energy exists even for
$\gamma=-1$. As a corollary, the $L^{5/3}$ norm of mass density
$\|\rho\|\_{5/3}$ gets bounded.

Let $f\in C^1([0,T],C\_c^1(\R^6))$ be a solution of the Vlasov-Poisson
system. For $t\in[0,T]$,

$\|\rho(t)\|\_{5/3}\les\iint|v|^2f\,dv\,dx$.

$\iint|v|^2f\,dv\,dx\les1$.

Note

$$\begin{aligned}
\rho(t,x)=\int f(t,x,v)\,dv
&\le\int_{|v|<R}f\,dv+\frac1{R^2}\int_{|v|\ge R}|v|^2f\,dv\\
&\les R^3+ R^{-2}\int|v|^2f\,dv.\end{aligned}$$

Set $R^3=R^{-2}\int|v|^2f\,dv$ to get

$$\rho(t,x)^{5/3}\les\int|v|^2f\,dv.$$

It is trivial for $\gamma=+1$ from the energy conservation. Suppose
$\gamma=-1$. By the Hardy-Littlewood-Sobolev inequality,

$$\frac1p+\frac\alpha d=\frac1q$$

for $p=2$, $d=3$, and $\alpha=1$ implies $q=6/5$, hence the bound of
$\|E(t)\|\_2$

$$\|E(t)\|_2\simeq\|\frac1{|x|^{d-\alpha}}*_x\rho(t,x)\|_{L_x^2}\les\|\rho(t)\|_{6/5}.$$

So, interpolation with Hölder's inequality gives

$$\|E(t)\|_2\les\|\rho\|_1^{7/12}\|\rho\|_{5/3}^{5/12}\simeq\|\rho\|_{5/3}^{5/12}.$$

Thus (1) gives

$$\iint|v|^2f\,dv\,dx=c+\|E(t)\|_2^2\les c+(\iint|v|^2f\,dv\,dx)^{1/2},$$

so the kinetic energy $\iint f\,dv\,dx$ is bounded.

If we had a bound of higher moment

$$\iint|v|^kf(t,x,v)\,dv\,dx\les1$$

for some $k>6$ so that $\|\rho(t)\|\_p\les1$ for some $p=\frac{k+3}3>3$,
then we would obtain

$$\|E(t)\|_\infty^{1-\frac1p}\les\|\rho\|_p^{\frac23}\|\rho\|_1^{\frac13-\frac1p}\les1.$$

We will see that this estimate proves the global existence immediately;
this is the idea of the paper of Lions and Perthame
[@lions1991propagation]. We do not cover this in detail.

## Local existence

The proof of local existence follows the following steps:

1.  construction of an approximate solution,

2.  establishment of a priori estimates,

3.  (subsequential) convergence of the approximate solution,

4.  verification of the solvability for the limit.

The Vlasov-Poisson system is good enough that we can show the usual
convergence of approximate solutions, not in the sense of subsequences.

### Approximate solution

We define an (global) *approximate solution* as a sequence of functions
$f\_n\in C^1(\R^+;C\_c^1(\R^6))$ such that

$$\left\{\ \begin{alignedat}{2}
&\pd_tf_{n+1}+v\cdot\del_xf_{n+1}+\gamma E_n\cdot\del_vf_{n+1}=0,\\
&E_n(t,x)=-\del_x\Phi_n,\\
&\Phi_n(t,x)=(-\Delta_x)^{-1}\rho_n,\qquad\lim_{|x|\to\infty}\Phi(t,x)=0,\\
&\rho_n(t,x)={\textstyle\int}f_n\,dv,\\
&f_{n+1}(0,x,v)=f_0(x,v).
\end{alignedat}\right.$$

This definition is made in order to let the force field $E$ constant
when solving $f\_{n+1}$. Note that it assumes for $f\_0$ to be
automatically $C\_c^1$ by definition.

An approximate solution exists for given initial term
$f\_0\in C\_c^1(\R^6)$.

Let $f\_0(t,x,v)=f\_0(x,v)$. Notice that $f\_0$ is clearly in
$C^1(\R^+;C\_c^1(\R^6))$. Assume $f\_n\in C^1(\R^+;C\_c^1(\R^6))$
satisfies the approximate system. We want to show that there is
$f\_{n+1}$ that satisfies the approximate system and
$f\_{n+1}\in C^1(\R^+;C\_c^1(\R^6))$.

We have for $0<\alpha<1$ that

$$\rho_n\in C^1(\R^+;C_c^1(\R^6)),\quad\Phi_n\in C^1(\R^+;C^{2,\alpha}(\R^6)),\ \text{and}\ E_n\in C^1(\R^+;C^{1,\alpha}(\R^6))$$

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
$s\mapsto(X\_{n+1},V\_{n+1})(s;t,x,v)\in C^1(\R^+,\R^6)$.

Define

$$f_{n+1}(t,x,v):=f_0(X_{n+1}(0;t,x,v),V_{n+1}(0;t,x,v)).$$

Then, $f\_{n+1}$ is clearly $C^1$, and we can show that

$$\begin{aligned}
f_{n+1}(s,X_{n+1}(s;t,x,v),V_{n+1}(s;t,x,v))&\\
=f_0(X_{n+1}(0;t,x,v),V_{n+1}(0;t,x,v))&=\const\end{aligned}$$

and that $f\_{n+1}$ satisfies the approximate system by the chain rule

$$\begin{aligned}
0&=\left.\dd{s}f_{n+1}(s,X_{n+1}(s;t,x,v),V_{n+1}(s;t,x,v))\right|_{s=t}\\
&=\pd_tf_{n+1}(t,x,v)+\dot X_{n+1}(t;t,x,v)\cdot\del_xf_{n+1}(t,x,v)\\
&\hspace{7.5em}+\dot V_{n+1}(t;t,x,v)\cdot\del_vf_{n+1}(t,x,v)\\
&=\pd_tf_{n+1}(t,x,v)+v\cdot\del_xf_{n+1}(t,x,v)+\gamma E_n(t,x)\cdot\del_vf_{n+1}(t,x,v).\end{aligned}$$

Also, $f\_{n+1}$ has compact support for each $t$ since the
characteristic does not blow up; finally we have
$f\_{n+1}\in C^1(\R^+,C\_c^1(\R^6))$.

Although the approximate solution is unique when given the initial term
$f\_0(t,x,v)=f\_0(x,v)$, we do not care of its uniqueness, but only the
existence.

In this section, we fix an approximate solution $f\_n$.

### Local a priori estimates

Recall that the characteristic curves of $f\_n$ are solutions of the
system

$$\left\{\ \begin{alignedat}{2}
\dot X_{n+1}(s;t,x,v)&=V_{n+1}(s,t,x,v)\\
\dot V_{n+1}(s;t,x,v)&=\gamma E_n(s,X_{n+1}(s;t,x,v)).
\end{alignedat}\right.$$

Firstly, the volume preserving property still holds for our approximate
system. Therefore, we have

$$\|\rho_n(t)\|_1=\const,\quad\|f_n(t)\|_p=\const.$$

Next, we prove local-time bounds on fields $E\_n$ and its spatial
derivative $\del\_xE\_n$. The bounds crucially act in the proof of
convergence of $f\_n$. Note that $\del\_xE\_n$ is a gradient of a vector
field $E\_n$, which is 9-dimensional.

Introduce the following quantity.

Define the *velocity support* or *maximal velocity*

$$Q_n(t)=\sup\{\,|v|:f_n(s,x,v)\ne0,\ s\in[0,t]\,\}.$$

In particular, $Q\_0$ is independent on $t$.

Let $T>0$ be a constant such that

$$T<(Q_0\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3})^{-1}.$$

Then, we have the following bounds:

For $t\le T$,

$$\|\rho_n(t)\|_\infty+\|E_n(t)\|_\infty+Q_n(t)\les1$$

indendent on $n$. In addition, the support of $X\_n$ is also uniformly
bounded in $t\le T$.

For $t\le T$,

$$\|\del_x\rho_n(t)\|_\infty+\|\del_xE_n(t)\|_\infty\les1$$

independent on $n$.

The dynamics of controls among uniform norms of each quantity including
$\rho$ and $E$ can be summarized as follows:

$\log\|E(t)\|\_\infty$ & $\log\|\rho(t)\|\_\infty$ & $\log Q(t)$,

and

$Q(t)$ & $|(X,V)(t)|$ & $\int\_0^t(1+\|E(s)\|\_\infty)\,ds$.

Then, Gronwall's inequality saves the game for the bound of $Q$. Also,
we can observe that all functions in here are controlled by the velocity
support $Q$. For detail explanations, see the following proof.

Since

$$\|\rho_n(t)\|_\infty\le Q_n^3(t)\|f_0\|_\infty,$$

a rough estimate for $\|E\|\_\infty$ gives

$$\|E_n(t)\|_\infty\le\|\rho_n(t)\|_\infty^{2/3}\|\rho_n(t)\|_1^{1/3}\le Q_n^2(t)\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3}.$$

Let $c(f\_0)=\|f\_0\|\_\infty^{2/3}\|f\_0\|\_1^{1/3}$ be a constant such
that $\|E\_n(t)\|\le cQ\_n^2(t)$. We claim that

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
|V_{n+1}(t;0,x,v)|
&\le|v|+\int_0^t|E_n(s;0,x,v)|\,ds\\
&\le Q_0+c\int_0^tQ_n^2(s)\,ds\end{aligned}$$

implies

$$\begin{aligned}
Q_{n+1}(t)
&\le Q_0+c\int_0^tQ_n^2(s)\,ds\\
&\le Q_0+c\int_0^t\left(\frac{Q_0}{1-cQ_0s}\right)^2ds
=\frac{Q_0}{1-cQ_0t}.\end{aligned}$$

By induction, $Q\_n(t)\le\frac{Q\_0}{1-cQ\_0t}\les1$ for all $n$ and
$t\in[0,T]$, where $T<(cQ\_0)^{-1}$. Furthermore,

$$\|\rho_n(t)\|_\infty\les Q_n^3(t)\les1,\quad\|E_n(t)\|_\infty\les Q_n^2(t)\les1.$$

The position support is bounded because

$$|X_n(t;0,x,v)|\le|x|+\int_0^t|V_n(s;0,x,v)|\,ds\le|x|+TQ_n(t)\les1.$$

Since we already have bounds for $\|\rho\_n\|\_\infty$ and
$\|\rho\_n\|\_1$, what we should estimate in order to bound
$\|\del\_xE\_n\|\_\infty$ is $\del\_x\rho\_n$. To do this, we will
consider $\del\_xX\_n$ and $\del\_xV\_n$. In particular, we have

$$\begin{aligned}
\del_xX_n(t;t,x,v)&=\del_xx=(1,0,0\,;0,1,0\,;0,0,1),\\
\del_xV_n(t;t,x,v)&=\del_xv=0.\end{aligned}$$

Two inequalities

$$\begin{aligned}
|\del_xX_{n+1}(s;t,x,v)|
&=\Bigl|\underbrace{(1,0,\cdots,0,1)}_{9}-\int_s^t\del_xV_{n+1}(s';t,x,v)\,ds'\Bigr|\\
&\le\sqrt3+\int_s^t|\del_xV_{n+1}(s';t,x,v)|\,ds'\end{aligned}$$

and

$$\begin{aligned}
|\del_xV_{n+1}(s;t,x,v)|
&=|\int_s^t\del_xE_n(s',X_{n+1}(s';t,x,v))\,ds'|\\
&\le\int_s^t|\del_xX_{n+1}(s';t,x,v)|\cdot\|\del_xE_n(s')\|_\infty\,ds'\end{aligned}$$

are combined as

$$\begin{aligned}
&\qquad|\del_xX_{n+1}(s;t,x,v)|+|\del_xV_{n+1}(s;t,x,v)|\\
&\le\sqrt3+\int_s^t(1+\|\del_xE_n(s')\|_\infty)(|\del_xX_{n+1}(s';t,x,v)|+|\del_xV_{n+1}(s';t,x,v)|)\,ds'.\end{aligned}$$

By the Gronwall inequality, we get

$$|\del_xX_{n+1}(s;t,x,v)|+|\del_xV_{n+1}(s;t,x,v)|\le\sqrt3\,e^{\int_s^t(1+\|\del_xE_n(s')\|_\infty)\,ds'}$$

for $0\le s\le t$. Thus we have

$$\begin{aligned}
|\del_x\rho_{n+1}&(t,x)|
=|\int\del_xf_0(X_{n+1}(0;t,x,v),V_{n+1}(0;t,x,v))\,dv|\\
&\le\|\del_{x,v}f_0\|_\infty\int(|\del_xX_{n+1}(0;t,x,v)|+|\del_xV_{n+1}(0;t,x,v)|)\,dv\\
&\les\|\del_{x,v}f_0\|_\infty Q_{n+1}^3(t)\cdot e^{\int_0^t(1+\|\del_xE_n(s)\|_\infty)\,ds}.\end{aligned}$$

Recall that

$$\begin{aligned}
\|\del_xE_{n+1}(t)\|
&\les(1+\|\rho_{n+1}(t)\|_\infty\log^+\|\del_x\rho_{n+1}(t)\|_\infty+\|\rho_{n+1}(t)\|_1)\\
&\les1+\log^+\|\del_x\rho_{n+1}(t)\|_\infty\end{aligned}$$

for $t\le T$. By inserting the estimate for $|\del\_x\rho\_{n+1}(t,x)|$,
we can find a constant $c=c(f\_0)$ such that

$$\begin{aligned}
1+\|\del_xE_{n+1}(t)\|_\infty\le c(1+\int_0^t(1+\|\del_xE_n(s)\|_\infty)\,ds)\end{aligned}$$

in $t\le T$, where
$T<(Q\_0\|f\_0\|\_\infty^{2/3}\|f\_0\|\_1^{1/3})^{-1}$. Without loss of
generality, we may assume that $c$ satisfies

$$c\ge\sup_{s\in[0,T]}(1+\|E_0(s)\|_\infty).$$

Then, induction obtains the bound

$$1+\|E_n(t)\|_\infty\le ce^{ct}\le ce^{cT}\les1$$

for all $n$ and $t\le T$. The derivative of mass density is bounded
since

$$\|\del_x\rho_{n+1}(t)\|_\infty\les e^{\int_0^t(1+\|\del_xE_n(s)\|_\infty)\,ds}\les1.\qedhere$$

### Convergence of approximate solution

Although most of the nonlinear systems fail to have convergent
approximate solutions so that compactness methods are often applied, the
approximate solutions constructed and investigated in the previous
subsections uniformly converges.

Let $T>0$ be a constant such that

$$T<(Q_0\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3})^{-1}.$$

For $t\le T$ and $n\ge1$,

$$\|f_{n+1}(t)-f_n(t)\|_\infty\les\int_0^t\|E_n(s)-E_{n-1}(s)\|_\infty\,ds.$$

For $s\le T$ and $n\ge1$,

$$\|E_n(s)-E_{n-1}(s)\|_\infty\les\|f_n(s)-f_{n-1}(s)\|_\infty.$$

$f\_n$ converges to a function $f$ uniformly in $C([0,T]\x\R^6)$.

For each $t,x,v$ a sequence of maps

$$s\mapsto(X_n(s;t,x,v),V_n(s;t,x,v))$$

converges in $C^1([0,T],\R^6)$ so that its limit $(X,V)$ satisfies the
equations

$$\dot X(s;t,x,v)=V(s;t,x,v),\quad\dot V(s;t,x,v)=\gamma E(s,X(s;t,x,v)),$$

where

$$E(t,x)=\frac1{4\pi}\iint\frac{(x-y)f(t,y,v)}{|x-y|^3}\,dv\,dy.$$

Denote

$$g(s):=|X_{n+1}(s;t,x,v)-X_n(s;t,x,v)|+|V_{n+1}(s;t,x,v)-V_n(s;t,x,v)|$$

for given $t,x,v$. The $C^1$ regularity of $f\_0$ gives

$$\begin{aligned}
|f&_{n+1}(t,x,v)-f_n(t,x,v)|\\
&=|f_0(X_{n+1}(0;t,x,v),V_{n+1}(0;t,x,v))-f_0(X_n(0;t,x,v),V_n(0;t,x,v))|\\
&\les|X_{n+1}(0;t,x,v)-X_n(0;t,x,v)|+|V_{n+1}(0;t,x,v)-V_n(0;t,x,v)|\\
&=g(0).\end{aligned}$$

If an inequality

$$\sup_{s\in[0,t]}g(s)\les\int_0^t\|E_n(s)-E_{n-1}(s)\|_\infty\,ds$$

is obtained for $t\le T$, then we are done.

Let $0\le s\le t\le T$. Because

$$\begin{aligned}
X_n(s;t,x,v)&=x-\int_s^tV_n(s';t,x,v)\,ds',\\
V_n(s;t,x,v)&=v-\int_s^t\gamma E_{n-1}(s',X_n(s;t,x,v))\,ds',\end{aligned}$$

we have two inequalities

$$\begin{aligned}
|V&_{n+1}(s;t,x,v)-V_n(s;t,x,v)|\\
&\le\int_s^t|E_n(s',X_{n+1}(s';t,x,v))-E_{n-1}(s',X_n(s';t,x,v))|\,ds'\\
&\le\int_s^t(|E_n(s',X_{n+1})-E_n(s',X_n)|+|E_n(s',X_n)-E_{n-1}(s',X_n)|)\,ds'\\
&\le\int_s^t(\|\del_xE_n(s')\|_\infty|X_{n+1}(s')-X_n(s')|+\|E_n(s')-E_{n-1}(s')\|_\infty)\,ds'\end{aligned}$$

and

$$\begin{aligned}
|X_{n+1}(s;t,x,v)-X_n(s;t,x,v)|\le\int_s^t|V_{n+1}(s';t,x,v)-V_n(s';t,x,v)|\,ds'\end{aligned}$$

for $s\in[0,t]$. By combining the two inequalities above, we get

$$\begin{aligned}
\label{ggw}
g(s)\le\int_s^ta(s')g(s')\,ds'+\int_s^t\|E_n(s')-E_{n-1}(s')\|_\infty\,ds',\end{aligned}$$

where $a(s):=1+\|\del\_xE\_n(s)\|\_\infty$.

Here we use a Gronwall-type inequality to bound $g(s)$. In more detail,
multiplying

$$a(s)e^{-\int_s^ta(s')ds'}$$

on the both-hand-side of ([\[ggw\]](#ggw){reference-type="ref"
reference="ggw"}), and using $a\les 1$ in $t\le T$, we have

$$\begin{aligned}
&-\dd{s}\left(e^{-\int_s^ta(s')\,ds'}\int_s^ta(s')g(s')\,ds'\right)\\
&\hspace{5em}\le a(s)e^{-\int_s^ta(s')ds'}\int_s^t\|E_n(s')-E_{n-1}(s')\|_\infty\,ds'\\
&\hspace{5em}\les\int_s^t\|E_n(s')-E_{n-1}(s')\|_\infty\,ds'\end{aligned}$$

Integrate from $s$ to $t$ and bound $(t-s)\le T\les1$ to get

$$\begin{aligned}
\label{abd}
e^{-\int_s^ta(s')\,ds'}\int_s^ta(s')g(s')\,ds'\les\int_s^t\|E_n(s')-E_{n-1}(s')\|_\infty\,ds'.\end{aligned}$$

Since $e^{\int\_s^ta(s')\,ds'}\le e^{T\sup\_{s\in[0,t]}a(s)}\les1$, the
inequalities ([\[ggw\]](#ggw){reference-type="ref" reference="ggw"}) and
([\[abd\]](#abd){reference-type="ref" reference="abd"}) implies

$$\begin{aligned}
\label{rii}
g(s)\les\int_0^t\|E_n(s')-E_{n-1}(s')\|_\infty\,ds'\end{aligned}$$

for arbitrary $s\in[0,t]$.

Notice that

$$\|E_n(t)-E_{n-1}(t)\|_\infty\les\|\rho_n(t)-\rho_{n-1}(t)\|_1^{1/3}\|\rho_n(t)-\rho_{n-1}(t)\|_\infty^{2/3}.$$

For $L^\infty$-norm,

$$\begin{aligned}
\|\rho_n(t)-\rho_{n-1}(t)\|_\infty
&\le\max\{Q_n^3(t),Q_{n-1}^3(t)\}\|f_n(t)-f_{n-1}(t)\|_\infty\\
&\les\|f_n(t)-f_{n-1}(t)\|_\infty.\end{aligned}$$

For $L^1$-norm, since the support of $f\_n,f\_{n-1}$ is bounded in both
directions $x,v$ in finite time,

$$\|\rho_n(t)-\rho_{n-1}(t)\|_1\le\|f_n(t)-f_{n-1}(t)\|_1\les\|f_n(t)-f_{n-1}(t)\|_\infty$$

for $t\le T$, where $T<\infty$ arbitrary.

From (i) and (ii), there is a constant $c=c(f\_0)$ such that for $t<T$,

$$\|f_{n+1}(t)-f_n(t)\|_\infty\le c\int_0^t\|f_n(s)-f_{n-1}(s)\|_\infty\,ds.$$

We can easily get with induction

$$\|f_{n+1}(t)-f_n(t)\|_\infty\le M\frac{(ct)^n}{n!},$$

where $M=\sup\_{s\in[0,T]}\|f\_1(s)-f\_0(s)\|\_\infty$. Therefore,

$$\sum_{n=0}^\infty\|f_{n+1}-f_n\|_\infty\le\sup_{t\in[0,T]}Me^{ct}<\infty$$

implies $f\_n$ uniformly converges in $C([0,T]\x\R^6)$.

Write

$$X(s)=X(s;t,x,v),\qquad V(s)=V(s;t,x,v)$$

for given $t,x,v$. Recall that $g$ measures the difference between
$(X\_{n+1},V\_{n+1})$ and $(X\_n,V\_n)$. By the inequality $(\ref{rii})$
and the result in (ii),

$$\begin{aligned}
\sup_{s\in[0,T]}g(s)\les\int_0^T\|E_n(s)-E_{n-1}(s)\|_\infty\les T\|f_n-f_{n-1}\|_\infty.\end{aligned}$$

Then, the uniform convergence of characteristics $(X\_n,V\_n)$ is clear
by the absolute convergence of the series
$\sum\|f\_{n+1}-f\_n\|\_\infty$.

Also for the uniform convergence of $(\dot X\_n,\dot V\_n)$, it is
proved by the absolute convergence of the series
$\sum\|f\_{n+1}-f\_n\|\_\infty$ since

$$\begin{aligned}
&\|\dot X_{n+1}-\dot X_n\|_\infty=\|V_{n+1}-V_n\|_\infty,\\
&\|\dot V_{n+1}-\dot V_n\|_\infty\le\|\del_xE_n\|_\infty\|X_{n+1}-X_n\|_\infty+\|E_n-E_{n-1}\|_\infty,\end{aligned}$$

yielding

$$\|\dot X_{n+1}-\dot X_n\|_\infty+\|\dot V_{n+1}-\dot V_n\|_\infty\les\|f_n-f_{n-1}\|_\infty.$$

Then, by limiting the both-hand-side of equations

$$\dot X_n(s)=V_n(s),\qquad \dot V_n(s)=\gamma E_{n-1}(s,X_n(s)),$$

we easily get

$$\dot X(s)=V(s),\qquad \dot V(s)=\gamma E(s,X(s)).\qedhere$$

Let $f\_n$ be an approximate solution. Then, there is a constant
$T=T(f\_0)>0$ be a constant such that the limit $f$ of $f\_n$ is a
classical solution of the Cauchy problem for the Vlasov-Poisson system
with time domain $[0,T]$.

Take $T$ such that
$T<(Q\_0\|f\_0\|\_\infty^{2/3}\|f\_0\|\_1^{1/3})^{-1}$. Let $X(s;t,x,v)$
and $V(s;t,x,v)$ be the limits of $X\_n(s;t,x,v)$ and $V\_n(s;t,x,v)$
for given $t,x,v$. Notice that

$$\begin{aligned}
f(t,x,v)=\lim_{n\to\infty}f_n(t,x,v)&=\lim_{n\to\infty}f_0(X_n(0;t,x,v),V_n(0;t,x,v))\\
&=f_0(X(0;t,x,v),V(0;t,x,v)),\end{aligned}$$

which shows $f$ is $C^1$ since $f\_0$ and $(X,V)$ are $C^1$. We can
check it solves the system by expand the right-hand-side of

$$0=\dd{s}f(s,X(s;t,x,v),V(s;t,x,v))|_{s=t}$$

using the chain rule. The compact support is by the fact that
characteristic curves do not blow up.

### Uniqueness

Suppose $f\_1,f\_2\in C^1([0,T];C\_c^1(\R^6))$ are classical solutions
of the Cauchy problem for the Vlasov-Poisson system with a common
initial data $f\_0$. Then, $f\_1=f\_2$.

As we did in (i) and (ii) of Lemma 2.3, we can obtain

$$\|f_1(t)-f_2(t)\|_\infty\les\int_0^t\|f_1(s)-f_2(s)\|_\infty\,ds$$

for $t\le T$. By the Gronwall lemma, we get

$$\int_0^t\|f_1(s)-f_2(s)\|_\infty\le0.\qedhere$$

### Prolongation criterion

We give in this last subsection a sufficient condition for a local
classical solution $f$ to be global.

Let $f\in C^1([0,T];C\_c^1(\R^6))$. Define for $t\in[0,T]$

$$Q(t):=\sup\{\,|v|:f(s,x,v)\ne0,\ s\in[0,t]\,\}.$$

Let $f$ be a classical solution of the Cauchy problem for the
Vlasov-Poisson system. If $Q(t)$ is bounded, then $f$ is continued to a
classical solution with a longer time interval.

Suppose $f\in C^1([0,T],C\_c^1(\R^6))$. Since $Q$ does not blow up, we
may define

$$Q(T):=\lim_{t\uparrow T}Q(t).$$

We are going to apply the local existence result for a new problem, in
which we write $\tld f$ for the solution, with initial condition
$\tld f(0,x,v):=f(t\_0,x,v)$ for some $t\_0<T$. In Section 2.3, we have
shown the length of time interval for existence $T$ is given by the
condition

$$T<(Q_0\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3})^{-1}.$$

It means that, if we arrange it for the new solution $\tld f$, the
interval of existence of $\tld f$ has in fact a lower bound $\tld T>0$
that depends only on $Q(T)$ for any new initial time $t\_0$; it is
because the monotonicity of $Q$ says $Q(T)^{-1}<Q(t\_0)^{-1}$ and the
volume preservation implies $\|f\_0\|\_\infty=\|f(t\_0)\|\_\infty$ and
$\|f\_0\|\_1=\|f(t\_0)\|\_1$. In other words, we can take any $\tld T$
such that

$$\tld T<(Q(T)\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3})^{-1}.$$

Note that the bound does not depend on $t\_0$ but only on its upper
bound $T$.

Set $t\_0=T-\frac12\tld T$ so that $t\_0<T<t\_0+\tld T$. Then, we can
construct a new solution in $C^1([0,t\_0+\tld T),C\_c^1(\R^6))$ by
pasting solutions $f\in C^1([0,T],C\_c^1(\R^6))$ and
$\tld f\in C^1([t\_0,t\_0+\tld T],C\_c^1(\R^6))$.

If the following statement holds, then Theorem 1.1 is true: every
(local) classical solution $f$ with a given initial data
$f\_0\in C\_c^1(\R^6)$ satisfies $Q(t)\le h(t)$ for a continuous
function $h:[0,\infty)\to[0,\infty)$.

Suppose $f\in C^1([0,T\_{max}),C\_c^1(\R^6))$ for $T\_{max}<\infty$ is
the maximal solution with initial data $f\_0$. Since $Q$ is bounded on
$[0,T\_{max}]$, we can apply the previous proposition, which contradicts
to the maximality of $T\_{\max}$. Hence $T\_{max}=\infty$, and the
solution $f$ is prolonged forever.

## Global existence

Let $f\_0\in C\_c^1(\R^6,[0,\infty))$ and $p>\frac{33}{17}$. The
classical solution $f$ of the Cauchy problem for the Vlasov-Poisson
system with an initial data $f\_0$ has a constant $c=c(f\_0,p)$ such
that

$$Q(t)\le c(1+t)^p.$$

### Time averaging

Fix a (local) classical solution $f$. If we had an integral inequality

$$Q(t)-Q(t-\Delta)\les\int_{t-\Delta}^tQ(s)^a\,ds$$

for some constant $0\le a\le1$, then we would be able to prove that

$$\begin{aligned}
\label{gjg}
Q(t)\les\begin{cases}(1+t)^{\frac1{1-a}}&,0\le a<1\\e^{ct}&,a=1\end{cases}\end{aligned}$$

using the nonlinear Gronwall lemma. To obtain this integral inequality,
we may try as follows: if we got an estimate on the field

$$\|E(t)\|_\infty\les Q(t)^a,$$

then for any $t,\hat x,\hat v$ such that $f(t,\hat x,\hat v)\ne0$ and
for any $\Delta>0$ we have

$$|v-V(t-\Delta;t,\hat x,\hat v)|=|\int_{t-\Delta}^t\gamma E(s,X(s;t,\hat x,\hat v))\,ds|\les\int_{t-\Delta}^tQ(s)^a\,ds,$$

so there would be a constant $c=c(f\_0)$ such that

$$\begin{aligned}
|v|&\le|V(t-\Delta;t,\hat x,\hat v)|+c\int_{t-\Delta}^tQ(s)^a\,ds\\
&\le Q(t-\Delta)+c\int_{t-\Delta}^tQ(s)^a\,ds,\end{aligned}$$

which deduces

$$Q(t)\le Q(t-\Delta)+c\int_{t-\Delta}^tQ(s)^a\,ds.$$

However, an optimized version of the estimate in (i) of Lemma 1.2 that
uses $\|\rho(t)\|\_{5/3}\les1$ gives only

$$\|E(t)\|_\infty\les\|\rho(t)\|_\infty^{4/9}\|\rho(t)\|_{5/3}^{5/9}\les(Q(t)^3)^{4/9}\cdot1^{5/9}=Q(t)^{4/3},$$

so we need another approach because $4/3>1$. Our strategy is to average
in the time direction. Precisely, we estimate the averaged field

$$\frac1\Delta\int_{t-\Delta}^t|E(s,X(s;t,\hat x,\hat v))|\,ds\les Q(t)^a$$

for arbitrary $t,\hat x,\hat v$ and for suitably chosen $\Delta$. Then,
we would get a weaker inequality

$$Q(t)-Q(t-\Delta)\les \Delta\cdot Q(t)^a,$$

which is also able to deduce ([\[gjg\]](#gjg){reference-type="ref"
reference="gjg"}). The detailed proof of
([\[gjg\]](#gjg){reference-type="ref" reference="gjg"}) will be
presented in Section 3.4.

Fix $(t,\hat x,\hat v)\in\R^+\x\R^6$. We will write

$$\hat X(s):=X(s;t,\hat x,\hat v)\quad\text{and}\quad\hat V(s):=V(s;t,\hat x,\hat v).$$

Also, we will use the notations

$$X(s):=X(s;t,x,v)\quad\text{and}\quad V(s):=V(s;t,x,v)$$

assuming $x,v$ are given without any confusion. Symbols $y$ and $w$ are
always used for $X(s)$ and $V(s)$ at time $s$ especially when applying
volume preserving coordinates transformation
$(x,v)\mapsto(X(s),V(s))=(y,w)$.

Now, our ultimate goal is to bound the integral

$$\begin{aligned}
\int_{t-\Delta}^t|E(s,\hat X(s))|\,ds
&\le\frac1{4\pi}\int_{t-\Delta}^t\iint\frac{f(s,y,w)}{|y-\hat X(s)|^2}\,dw\,dy\,ds\\
&=\frac1{4\pi}\int_{t-\Delta}^t\iint\frac{f(t,x,v)}{|X(s)-\hat X(s)|^2}\,dv\,dx\,ds.\end{aligned}$$

The main difficulty of this integral is that $|y-\hat X(s)|^{-2}$ is not
integrable with respect to $y$ on the region where $|y|$ is large; the
inverse square has too slow decay rate to be integrable in three
dimesional space $\R^3$.

Then, we want to find a lower bound of the relative position vector
$|X(s)-\hat X(s)|$ assuming it is large. When the distance between
$X(s)$ and $\hat X(s)$ is sufficiently large so that the interaction
between particles at positions $X(s)$ and $\hat X(s)$ is sufficiently
weak, the distance will change almost linearly in both velocity and
time. Intuitively, we can write

$$|X(s)-\hat X(s)|\gg1\impl X(s)-\hat X(s)\approx (v-\hat v)(s-c_1)+c_2,$$

where $c\_1,c\_2$ are constants that depend on $(t,x,v,\hat x,\hat v)$.

Then, here the time averaging plays its role: interchange the integral
as follows:

$$\int_{t-\Delta}^t\iint\frac{f(t,x,v)}{|X(s)-\hat X(s)|^2}\,dv\,dx\,ds=\iint f(t,x,v)\left(\int_{t-\Delta}^t\frac{ds}{|X(s)-\hat X(s)|^2}\right)\,dv\,dx.$$

The time function
$|X(s)-\hat X(s)|^{-2}\approx|(v-\hat v)(s-c\_1)+c\_2|^{-2}$ is
integrable in time direction, and the time integration on a set
$\\{s:|(v-\hat v)(s-c\_1)+c\_2|\ge r\\}$ for a proper radius $r$ will be
approximately $(|v-\hat v|r)^{-1}$. For details, see Proposition 3.3. It
means that the singularity issue of a spatial function is changed to an
estimate problem for a function of velocity. Finally by taking $r$ such
that $(|v-\hat v|r)^{-1}\les|v|^2$, the kinetic energy bounds the
quantity what we want.

### Lemmas

The following lemma suggests an appropriate way to choose the time
averaging interval $\Delta$.

Let $P>0$. Suppose $s\le[t-\Delta,t]$, where

$$\Delta\cdot\sup_{s\in[0,t]}\|E(s)\|_\infty\le\frac P4.$$

If $|v|<P$, then $|V(s)|<2P$.

If $|v|\ge P$, then $\frac12|v|\le|V(s)|\le2|v|$.

If $|v-\hat v|<P$, then $|V(s)-\hat V(s)|<2P$.

If $|v-\hat v|\ge P$, then
$\frac12|v-\hat v|\le|V(s)-\hat V(s)|\le2|v-\hat v|$.

Note that

$$|v-V(s)|\le\int_s^t|E(s',X(s'))|\,ds'\le\Delta\cdot\sup_{s'\in[0,t]}\|E(s')\|_\infty\le\frac P4,$$

and similarly

$$|\hat v-\hat V(s)|\le\frac P4.$$

For (i),

$$|V(s)|\le|v|+|v-V(s)|<P+\frac P4<2P.$$

For (ii),

$$|V(s)|\ge|v|-|v-V(s)|\ge|v|-\frac P4\ge\frac12|v|$$

and

$$|V(s)|\le|v|+|v-V(s)|\le|v|+\frac P4\le2|v|.$$

For (iii)

$$|V(s)-\hat V(s)|\le|V(s)-v|+|v-\hat v|+|\hat v-\hat V(s)|<\frac P4+P+\frac P4<2P.$$

For (iv),

$$|V(s)-\hat V(s)|\ge-|V(s)-v|+|v-\hat v|-|\hat v-\hat V(s)|\ge-\frac P4+|v-\hat v|-\frac P4\ge\frac12|v-\hat v|$$

and

$$|V(s)-\hat V(s)|\le|V(s)-v|+|v-\hat v|+|\hat v-\hat V(s)|\le\frac P4+|v-\hat v|+\frac P4\le2|v-\hat v|.$$

From now for $0\le\Delta\le t$, let it be such that

$$\Delta\cdot\sup_{s\in[0,t]}\|E(s)\|_\infty\le\frac P4.$$

If $v$ satisfies $|v-\hat v|\ge P$, then there is $s\_0\in[t-\Delta,t]$
such that

$$|X(s)-\hat X(s)|\ge\frac14|v-\hat v||s-s_0|$$

for all $s\in[t-\Delta,t]$ and $x\in\R^3$.

Let $Z(s):=X(s)-\hat X(s)$ be the relative position vector. Then,

$$\begin{aligned}
Z'(s)&=V(s)-\hat V(s),\\
Z''(s)&=\gamma[E(s,X(s),V(s))-E(s,\hat X(s),\hat V(s))],\end{aligned}$$

so the Taylor expansion at $s\_0\in[t-\Delta,t]$ gives

$$Z(s)=\left[Z(s_0)+Z'(s_0)(s-s_0)\right]+\left[\frac{Z''(\sigma)}2(s-s_0)^2\right]$$

for some $\sigma$ between $s,s\_0$.

Choose

$$s_0=\argmin_{s\in[t-\Delta,t]}|Z(s)|.$$

If $s\_0=t$ or $s\_0=t-\Delta$, then $\dd{s}|Z(s\_0)|^2\le0$ or
$\dd{s}|Z(s\_0)|^2\ge0$ respectively. Otherwise, $s\_0\in(t-\Delta,t)$,
and $\dd{s}|Z(s\_0)|^2=0$. Hence

$$Z(s_0)\cdot Z'(s_0)(s-s_0)=\frac12\dd{s}|Z(s_0)|^2(s-s_0)\ge0$$

for $s\in[t-\Delta,t]$, and

$$|Z(s_0)+Z'(s_0)(s-s_0)|^2\ge|Z'(s_0)(s-s_0)|^2.$$

The condition $|v-\hat v|\ge P$ implies

$$|Z'(s)|\ge\frac12|v-\hat v|$$

for $s\in[t-\Delta,t]$. Therefore,

$$|Z(s_0)+Z'(s_0)(s-s_0)|\ge|Z'(s_0)(s-s_0)|\ge\frac12|v-\hat v||s-s_0|,$$

and

$$\begin{aligned}
|\frac{Z''(\sigma)}2(s-s_0)^2|
&\le\|E(t)\|_\infty(s-s_0)^2
\le\|E(t)\|_\infty\Delta|s-s_0|\\
&\le\frac P4|s-s_0|
\le\frac14|v-\hat v||s-s_0|\end{aligned}$$

yields

$$|X(s)-\hat X(s)|=|Z(s)|\ge\frac14|v-\hat v||s-s_0|.\qedhere$$

### Divide and conquer

We estimate the integral of $|E(s,\hat X(s))|$ by dividing the integral
region $[t-\Delta,t]\x\R^6$ into three regions as:

$$\begin{aligned}
U:&=\{\,(s,x,v):\ s\in[t-\Delta,t],\quad|v-\hat v|\ge P,\\
&\hspace{6em}|X(s)-\hat X(s)|\ge R\max\{|v|^{-3},|v-\hat v|^{-3}\}\,\},\\
B:&=\{\,(s,x,v):\ s\in[t-\Delta,t],\quad|v-\hat v|\ge P,\quad|v|\ge P,\\
&\hspace{6em}|X(s)-\hat X(s)|<R\max\{|v|^{-3},|v-\hat v|^{-3}\}\,\},\\
G:&=\{\,(s,x,v):\ s\in[t-\Delta,t],\quad\min\{|v-\hat v|,|v|\}<P\,\}\\
&=[t-\Delta,t]\x\R^6\setminus(U\cup B).\end{aligned}$$

The constants $P>0$ and $R>0$ will be determined later.

$$\iiint_U\les R^{-1}.$$

Write

$$r:=R\max\{|v|^{-3},|v-\hat v|^{-3}\}.$$

Then,

$$U=\{\,(s,x,v):s\in[t-\Delta,t],\quad|v-\hat v|\ge P,\quad |X(s)-\hat X(s)|\ge r\,\}.$$

Since $|X(s)-\hat X(s)|\ge r$ on $U$,

$$\begin{aligned}
\int_{|s-s_0|<\frac{4r}{|v-\hat v|}}\frac{\chi_U(s,x,v)}{|X(s)-\hat X(s)|^2}\,ds
\le\frac1{r^2}\int_{|s-s_0|<\frac{4r}{|v-\hat v|}}ds=8\frac1{|v-\hat v|r}.\end{aligned}$$

Since $|v-\hat v|\ge P$ on $U$ so that
$|X(s)-\hat X(s)|\ge\frac14|v-\hat v||s-s\_0|$ by the previous lemma,

$$\begin{aligned}
\int_{|s-s_0|\ge\frac{4r}{|v-\hat v|}}\frac{\chi_U(s,x,v)}{|X(s)-\hat X(s)|^2}\,ds
&\le16\int_{|s-s_0|\ge\frac{4r}{|v-\hat v|}}\frac1{|v-\hat v|^2|s-s_0|^2}\,ds\\
&\le32\int_{4r}^\infty\frac1{|v-\hat v|^3|s-s_0|^2}d(|v-\hat v||s-s_0|)\\
&=8\frac1{|v-\hat v|r}.\end{aligned}$$

Therefore,

$$\int\frac{\chi_U(s,x,v)}{|X(s)-\hat X(s)|^2}\,ds\les\frac1{|v-\hat v|r}=R^{-1}\frac{\min\{|v|^3,|v-\hat v|^3\}}{|v-\hat v|}\le R^{-1}|v|^2$$

so that we have

$$\begin{aligned}
\iiint_U\frac{f(t,x,v)}{|X(s)-\hat X(s)|^2}\,dv\,dx\,ds
&=\iint f(t,x,v)\left(\int\frac{\chi_U(s,x,v)}{|X(s)-\hat X(s)|^2}\,ds\right)\,dv\,dx\\
&\les R^{-1}\iint|v|^2f(t,x,v)\,dv\,dx\les R^{-1}.\qedhere\end{aligned}$$

$$\iiint_B\les\Delta\cdot R\log\frac{4Q(t)}P.$$

Write

$$r:=R\max\{|v|^{-3},|v-\hat v|^{-3}\}.$$

Then,

$$B=\{\,(s,x,v):s\in[t-\Delta,t],\quad|v|\ge P,\quad|v-\hat v|\ge P,\quad |X(s)-\hat X(s)|<r\,\}.$$

We need to control the union of two regions

$$|X(s)-\hat X(s)|<R|v|^{-3}\quad\text{and}\quad|X(s)-\hat X(s)|<R|v-\hat v|^{-3}.$$

If we integrate $|X(s)-\hat X(s)|^{-2}$ with respect to $y$ on these
regions, then we get integrands $|v|^{-3}$ and $|v-\hat v|^{-3}$, which
has singularities on regions at which $|v|$, $|v-\hat v|$ are
respectively small and large; an inverse cubic function is both sharp
and broad in three dimensional space $\R^3$. The integral of inverse
cube on the region $|v|\sim\infty$ is bounded by $Q$, and the region
$|v|\sim0$ is bounded by $P$.

For each $s\in[t-\Delta,t]$, if we apply the coordinates transformation
$(x,v)\mapsto(y,w)=(X(s),V(s))$, then since $|v|\ge P$ implies

$$\frac12P\le\frac12|v|\le|w|\le Q(s)\quad\text{and}\quad|w|\le2|v|,$$

we have

$$\begin{aligned}
\int_{|v|\ge P}&\int_{|X(s)-\hat X(s)|<R|v|^{-3}}\frac{f(t,x,v)}{|X(s)-\hat X(s)|^2}\,dx\,dv\\
&\les\int_{\frac12P\le|w|\le Q(s)}\int_{|y-\hat X(s)|<R|V(t;s,y,w)|^{-3}}\frac1{|y-\hat X(s)|^2}\,dy\,dw\\
&\simeq R\int_{\frac12P\le|w|\le Q(t)}|V(t;s,y,w)|^{-3}\,dw\\
&\le8R\int_{\frac12P\le|w|\le Q(t)}|w|^{-3}\,dw\\
&\simeq R\log\frac{2Q(t)}P.\end{aligned}$$

Similarly but using the fact that $|v-\hat v|\le P$ implies

$$\frac12P\le\frac12|v-\hat v|\le|w-\hat V(s)|\le 2Q(s)\quad\text{and}\quad|w-\hat V(s)|\le2|v-\hat v|,$$

we have

$$\int_{|v-\hat v|\ge P}\int_{|X(s)-\hat X(s)|<R|v-\hat v|^{-3}}\frac{f(t,x,v)}{|X(s)-\hat X(s)|^2}\,dx\,dv\les R\log\frac{4Q(t)}P.$$

Therefore,

$$\iiint_B\frac{f(t,x,v)}{|X(s)-\hat X(s)|^2}\,dv\,dx\,ds\les\Delta\cdot R\log\frac{4Q(t)}P.\qedhere$$

$$\iiint_G\les\Delta\cdot P^{4/3}.$$

Note

$$\begin{aligned}
G=\ &\{\,(s,x,v):s\in[t-\Delta,t],\quad|v|<P\}\\
\cup\ &\{\,(s,x,v):s\in[t-\Delta,t],\quad|v-\hat v|<P\}.\end{aligned}$$

Since $|v|<P$ implies $|V(s;t,x,v)|<2P$, the coordinates transformation
$(x,v)\mapsto(y,w)=(X(s),V(s))$ gives

$$\begin{aligned}
\iint_{|v|<P}&\frac{f(t,x,v)}{|X(s)-\hat X(s)|^2}\,dv\,dx\\
&\le\int\frac1{|y-\hat X(s)|^2}\int_{|w|<2P}f(s,y,w)\,dw\,dy\\
&\les\|\int_{|w|<2P}f(s,y,w)\,dw\|_{L_y^\infty}^{4/9}\cdot\|\int_{|w|<2P}f(s,y,v)\,dv\|_{L_y^{5/3}}^{5/9}\\
&\les((2P)^3)^{4/9}\cdot1^{5/9}\simeq P^{4/3}.\end{aligned}$$

Similarly

$$\iint_{|v-\hat v|<P}\frac{f(t,x,v)}{|X(s)-\hat X(s)|^2}\,dv\,dx\les P^{4/3},$$

so we are done.

### Bound on the velocity support

Finally, with above estimates, we prove that $Q$ does not blow up.

Let $c=c(f\_0)$ be a constant such that

$$\|E(s)\|_\infty\le cQ(s)^{4/3}$$

for all $s\in\R^+$, and define

$$\Delta:=\frac{Q(t)^{4/11}}4\cdot\frac1{cQ(t)^{4/3}}=\frac1{4c}\,Q(t)^{-32/33}.$$

If $\Delta<t$, then for any $a>\frac{16}{33}$,

$$Q(t)-Q(t-\Delta)\les_a\Delta\cdot Q(t)^a.$$

Let $(d,e)=(\frac4{11},\frac{16}{33})$ and

$$P=Q(t)^d\quad\text{and}\quad R=Q(t)^e(\log\frac{4Q(t)}P)^{-1/2}.$$

Then, $\Delta\cdot cQ(t)^{4/3}=\frac P4$. Since

$$\Delta\cdot\sup_{s\in[0,t]}\|E(s)\|_\infty=\frac P4\cdot\frac{\sup_{s\in[0,t]}\|E(s)\|_\infty}{cQ(t)^{4/3}}\le\frac P4,$$

we can use the estimates on $U$, $B$, and $G$ :

$$\begin{aligned}
\int_{t-\Delta}^t&|E(s,\hat X(s))|\,ds
\le\int_{t-\Delta}^t\iint\frac{f(t,x,v)}{|X(s)-\hat X(s)|^2}\,dv\,dx\,ds\\
&\les R^{-1}+\Delta\cdot R\log\frac{4Q(t)}P+\Delta\cdot P^{4/3}\\
&\simeq\Delta\cdot\left(Q(t)^{4/3}P^{-1}R^{-1}+R\log\frac{4Q(t)}P+P^{4/3}\right)\\
&=\Delta\cdot\left(Q(t)^{4/3-d-e}\sqrt{\log\frac{4Q(t)}P}+Q(t)^e\sqrt{\log\frac{4Q(t)}P}+Q(t)^{4d/3}\right).\end{aligned}$$

Because $d=\frac4{11}$ and $e=\frac{16}{33}$ satisfy

$$\frac43-d-e=e=\frac43d=\frac{16}{33},$$

we get

$$\int_{t-\Delta}^t|E(s,\hat X(s))|\,ds\les\Delta\cdot Q(t)^{16/33}\log^{1/2}Q(t)$$

and the desired result by setting $\hat x$ and $\hat v$ to be
arbitrarily but $f(t,\hat x,\hat v)\ne0$.

Suppose $\Delta>0$ had no lower bound. If we define an increasing
function

$$j(z):=e^{\frac1{1-a}z^{1-a}},$$

that is, $j$ is defined as a solution of a differential equation
$j'(z)=z^{-a}j(z)$, then the inequality in the above corollary

$$Q(t)-Q(t-\Delta)\le c\Delta\cdot Q(t)^a$$

with $c=c(f\_0,a)$ would give

$$\begin{aligned}
\tld Q(t)-\tld Q(t-\Delta)
&=j(Q(t))-j(Q(t-\Delta))\\
&\le j(Q(t))-j(Q(t)-c\Delta\cdot Q(t)^a)\\
&\le c\Delta\cdot Q(t)^a\ j'(Q(t))\\
&=c\Delta\cdot j(Q(t))=c\Delta\cdot\tld Q(t),\end{aligned}$$

where $\tld Q(t):=j(Q(t))$. It derives an inequality including the left
lower Dini's derivative

$$D_-(e^{ct}\tld Q(t))\le0,$$

and this proves $\tld Q(t)\le\tld Q(0)e^{ct}$, which implies
$Q(t)\les\_a(1+t)^{\frac1{1-a}}$. However, unfortuately there is a lower
bound for $\Delta$. See the proof of Corollary 3.6, and check that the
lower bound is required:

$$R^{-1}\les\Delta\cdot Q(t)^{4/3}P^{-1}R^{-1}.$$

Thereby, we must use another method to justify
$Q(t)\les\_a(1+t)^{\frac1{1-a}}$.

For $\frac{16}{33}<a<1$,

$$Q(t)\les_a(1+t)^{\frac1{1-a}}.$$

Let $c=c(f\_0)$ be a constant such that
$\|E(s)\|\_\infty\le cQ(s)^{4/3}$ for all $s\in\R^+$. Since

$$Q(t)-Q(s)\le\int_s^t\|E(s')\|_\infty\,ds'$$

so that $Q$ is a nondecreasing continuous function, there is a unique
$T\_1=T\_1(f\_0)$ such that $T\_1=Q(T\_1)^{-32/33}$. Define a function
$\Delta:(T\_1,\infty)\to(0,\infty)$ such that

$$\Delta(s):=\frac1{4c}\,Q(s)^{-32/33}.$$

Then, by Corollary 3.6, $t>T\_1$ implies

$$Q(t)-Q(t-\Delta)\les_a\Delta\cdot Q(t)^a.$$

Inductively define a decreasing sequence $\\{t\_i\\}\_i$ such that

$$t_0:=t,\qquad t_{i+1}:=t_i-\Delta(t_i).$$

The differences have a uniform bound

$$t_i-t_{i+1}=\frac1{4c}\,Q(t_i)^{-32/33}\ge\frac1{4c}\,Q(t)^{-32/33},$$

so there is a positive integer $n$ such that $0<t\_n\le T\_1<t\_{n-1}$.
Then,

$$\begin{aligned}
Q(t)-Q(T_1)&\le Q(t_0)-Q(t_n)
=\sum_{i=0}^{n-1}(Q(t_i)-Q(t_{i+1}))\\
&\les_a\sum_{i=0}^{n-1}\Delta(t_i)\cdot Q(t_i)^a
\le\sum_{i=0}^{n-1}\Delta(t_i)\cdot Q(t)^a
\le tQ(t)^a\end{aligned}$$

yields

$$Q(t)\les_a1+tQ(t)^a.$$

Thus, $1\les Q(t)^a$ implies $Q(t)\les(1+t)^{\frac1{1-a}}$.

{% endraw %}