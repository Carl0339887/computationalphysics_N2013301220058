```python
# coding=utf-8
import numpy as np
import matplotlib.pyplot as plt
length = 9.8
g = 9.8
rgl = g/length

tau = 0.001
omega_0 = 0.00
theta_max = np.pi/3

amplitude = []
period = []

def calculate():
    for i in range(10000):
        omega.append(-rgl * np.sin(theta[-1]) * tau + omega[-1])
        theta.append(omega[-1] * tau + theta[-1])
        t.append(t[-1] + tau)
        #C_omega.append(-rgl * (theta[-1]) * tau + omega[-1])
        #C_theta.append(omega[-1] * tau + theta[-1])

def max():
    for i in range(10, 10000):
        if (theta[i - 1] - theta[i]) < 0 and (theta[i] - theta[i + 1]) > 0:
            period.append(t[i])

for j in range(1,500):
    theta_max = j/500.0
    amplitude.append(theta_max)

    omega = [omega_0]
    theta = [theta_max]
    t = [0]

    calculate()
    max()

font = {'family': 'serif',
        'color': 'darkred',
        'weight': 'normal',
        'size': 16}
plt.plot(amplitude,period,'-')
plt.title('Period - Amplitude', fontdict=font)
plt.xlabel('Angular amplitude (rad)', fontdict=font)
plt.ylabel('Period (s)', fontdict=font)

#print len(period)
#print len(amplitude)
plt.show()
```

