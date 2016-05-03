```python
# encoding: utf-8

import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D


def lorenz(x, y, z, s=10, r=25, b=8.0/3):
    x_dot = s*(y - x)
    y_dot = r*x - y - x*z
    z_dot = x*y - b*z
    return x_dot, y_dot, z_dot

dt = 0.01
stepCnt = 10000

# Need one more for the initial values
xs = np.empty((stepCnt + 1,))
ys = np.empty((stepCnt + 1,))
zs = np.empty((stepCnt + 1,))

x_plot = []
y_plot = []
z_plot = []

# Setting initial values
xs[0], ys[0], zs[0] = (1.0, 0.0, 0.0)

# Stepping through "time".
for i in range(stepCnt):
    # Derivatives of the X, Y, Z state
    x_dot, y_dot, z_dot = lorenz(xs[i], ys[i], zs[i])
    xs[i + 1] = xs[i] + (x_dot * dt)
    ys[i + 1] = ys[i] + (y_dot * dt)
    zs[i + 1] = zs[i] + (z_dot * dt)
    if xs[i]*xs[i+1]<0.0:
        r = np.abs(xs[i+1]/xs[i])
        y_plot.append((ys[i]*r+ys[i+1])/(1+r))
        z_plot.append((zs[i]*r+zs[i+1])/(1+r))


fig = plt.figure()
ax = fig.gca(projection='3d')

ax.plot(xs, ys, zs)
ax.set_xlabel("X Axis")
ax.set_ylabel("Y Axis")
ax.set_zlabel("Z Axis")
ax.set_title("Lorenz Attractor (r = 25)")

plt.show()
"""

font = {'family': 'serif',
        'color': 'darkred',
        'weight': 'normal',
        'size': 16}
plt.title('Poincare section(x=0)', fontdict=font)
plt.xlabel('y', fontdict=font)
plt.ylabel('z', fontdict=font)

plt.scatter(y_plot,z_plot,s=1)

plt.show()
"""
```

