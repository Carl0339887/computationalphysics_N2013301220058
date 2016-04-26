```python
# coding = utf-8

import numpy as np
import matplotlib.pyplot as plt

rgl = 1
q = 0.5
tau = 3 * np.pi / 200
F_D = 1.2
omega_D = 2/3.
omega = [0]
theta = [0.2]
t = [0]

omega_plot = []
theta_plot = []

for i in range(100000):
    omega.append(omega[-1]+(-rgl*np.sin(theta[-1]) -q*omega[-1] +F_D * np.sin(omega_D * t[-1]))*tau)
    theta.append(theta[-1]+omega[-1]*tau)
    t.append(t[-1] + tau)

    while theta[-1] >np.pi:
        theta[-1] -= 2 * np.pi
    while theta[-1] < -np.pi:
        theta[-1] += 2 * np.pi
    if (i+175) % 200 == 0:
        omega_plot.append(omega[-1])
        theta_plot.append(theta[-1])

font = {'family': 'serif',
        'color': 'darkred',
        'weight': 'normal',
        'size': 16}
plt.title('Poincare section', fontdict=font)
plt.xlabel('theta (rad)', fontdict=font)
plt.ylabel('omega (rad/s)', fontdict=font)

del omega_plot[0]
del theta_plot[0]
plt.scatter(theta_plot,omega_plot,s=1)

plt.show()


```

