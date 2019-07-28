---
layout: post
title:  "First post"
date:   2019-07-28 17:10:00 +0900
---

Monumental first post!


### Section

Begin itemize:

- item
- item

Source code are highlighted:

```python
import numpy as np
import matplotlib.pyplot as plt
from math import pi

def visualize(u, t, I, w):
	plt.plot(t, u, 'r.')
	u_e = u_exact(t, I, w)

	plt.plot(t, u_e, 'b-')
	plt.legend(['numerical', 'exact'], loc='upper left')
	plt.xlabel('t')
	plt.ylabel('u')
	plt.title('dt=%g' % t[1] - t[0])
	plt.axis([t[0], t[-1], 1.2*u.min(), 1.2*u.max()])
	plt.savefig('figure.png')
	plt.show()
```

Let $a$ be a compex number and $\gamma$ is a closed curve enclosing $a$.

Then, the Cauchy integral formula is described by:
\[ f(a)=\frac1{2\pi i}\oint_\gamma\frac{f(z)}{z-a}\,dz. \]

Show that $S^n$ possesses a nonvanishing vector field if and only if $n$ is odd.
