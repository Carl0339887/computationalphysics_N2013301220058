```python
# coding=utf-8
from pylab import *
import math

N_0 =100.0   # initial population
N = [N_0]
N_exact = [N_0]
M = [N_0]
M_exact = [N_0]

t = [0.0]    # time
ttime = float(raw_input('Total time =\n'))
tau = 0.01   # time step

a = 10.0
b = 0.01  # coefficients

for i in range(int(ttime / tau)):
    M.append(M[-1] * (1 + a * tau))
    M_exact.append(N_0 * math.e ** ((i + 1) * tau * a))
    N.append(N[-1] * (1 + a * tau) - tau * b * (N[-1] ** 2))
    N_exact.append((a*N_0*(math.e**(a*(i+1)*tau)))/(a-b*N_0+b*N_0*(math.e**(a*(i+1)*tau))))
    t.append((i + 1) * tau)


cmd = raw_input("step 1 or 2:\n")
if cmd == '1':
    figure(figsize=(10,6), dpi=80)
    plot(t, M, color="blue", linewidth=1.2, linestyle="--",label="Euler method")
    plot(t, M_exact, color="red",  linewidth=1, linestyle="-",label="Analytical")
    legend(loc='lower right')

    xlim(0,0.5)

    xticks(np.linspace(0,0.5,9,endpoint=True))

    ylim(0,M[-1])

    yticks(np.linspace(0,12000,9,endpoint=True))

elif cmd == '2':
    figure(figsize=(10,6), dpi=80)
    plot(t, M, color="blue", linewidth=1.2, linestyle="--",label="b = 0")
    plot(t, N, color="red",  linewidth=1, linestyle="-",label="b = 0.01")
    legend(loc='lower right')

    xlim(0,0.5)
    xticks(np.linspace(0,0.5,9,endpoint=True))

    ylim(0,a / b * 1.2)
    yticks([N_0,a / b],[r'$Initial$',r'$\frac{a}{b}$'])

else:
    figure(figsize=(10,6), dpi=80)
    plot(t, N_exact, color="green", linewidth=1.7, linestyle=":",label="Analitical")
    plot(t, N, color="red",  linewidth=1.7, linestyle="-.",label="Euler method")
    legend(loc='lower right')

    xlim(0,0.5)
    xticks(np.linspace(0,0.5,9,endpoint=True))

    ylim(0,a / b * 1.2)
    yticks([N_0,a / b],[r'$Initial$',r'$\frac{a}{b}$'])



show()

```

