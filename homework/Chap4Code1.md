```python
# coding = utf-8
import numpy as np
import matplotlib.pyplot as plt
ratio_of_mass = 1.1 #  ratio = m2 / m1
distance = 20
r1 = distance * ratio_of_mass / (1 + ratio_of_mass)
r2 = distance * 1 / (1 + ratio_of_mass)
tau = 0.1

t = [0]
v1x = [0];v1y = [4.0 * ratio_of_mass];
x1 = [r1];y1=[0];
v2x = [0];v2y = [-4.0];
x2 = [-r2];y2=[0];

for i in range(800):
    v1x.append(v1x[-1] - tau * x1[-1] / r1)
    v1y.append(v1y[-1] - tau * y1[-1] / r1)
    v2x.append(v2x[-1] - tau * x2[-1] / r2)
    v2y.append(v2y[-1] - tau * y2[-1] / r2)

    x1.append(x1[-1] + v1x[-1] * tau)
    y1.append(y1[-1] + v1y[-1] * tau)
    x2.append(x2[-1] + v2x[-1] * tau)
    y2.append(y2[-1] + v2y[-1] * tau)
    t.append(t[-1]+tau)


font = {'family': 'serif',
        'color': 'darkred',
        'weight': 'normal',
        'size': 16}
plt.plot(x1,y1,'-')
plt.plot(x2,y2,'--')

plt.xlim(-20,20)
plt.ylim(-20,20)
plt.title('Orbital in COM', fontdict=font)
plt.xlabel('X', fontdict=font)
plt.ylabel('Y', fontdict=font)

plt.show()
```

