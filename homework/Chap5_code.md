```python
# coding = utf-8
from mpl_toolkits.mplot3d import Axes3D
from matplotlib import cm
from matplotlib.ticker import LinearLocator, FormatStrFormatter
import matplotlib.pyplot as plt
import numpy as np

L = 21 # integer
cols = L
rows = L
plate_pos = L // 2 - 1
plate_len = L // 3
V1 = [[0.0 for col in range(cols)] for row in range(rows)]
def show_matrix(V,rows,cols):
    for i in range(rows):
        for j in range(cols):
            print "%5.2f" % V[i][j],
        print '\n'


for i in range(rows - plate_len, rows):
    V1[i][plate_pos] = -1

def update_V1():
    for i in range(1,rows-1):
        for j in range(1,cols-1):
            if not ((i >= rows - plate_len) & (j == plate_pos)):
                V1[i][j] = 0.25 * (V1[i-1][j] + V1[i+1][j] + V1[i][j-1] + V1[i][j+1])
            pass
    for j in range(1,cols - 1):
        if not j == plate_pos:
            V1[L-1][j] = 0.25 * (V1[L-1][j-1] + V1[L-1][j+1] + V1[L-2][j] * 2)
        pass


for i in range(10000):
    update_V1()
# show_matrix(V1, L, L)

V = [[0.0 for col in range(2*L - 1)] for row in range(2*L - 1)]
#show_matrix(V, 2*L-1, 2*L-1)

print
#show_matrix(V1, L, L)

def copy():
    # 1
    for i in range(L):
        for j in range(L, 2*L-1):
            V[i][j] = V1[i][j-L+1]
    # 4
    for i in range(L, 2*L-1):
        for j in range(L, 2*L-1):
            V[i][j] = V[2*L-2-i][j]
    # 2 & 3
    for i in range(2*L-1):
        for j in range(L-1):
            V[i][j] = -V[i][2*L-2-j]
    pass
copy()
# show_matrix(V, 2*L-1, 2*L-1)

################################
fig = plt.figure()
ax = fig.gca(projection='3d')
X = np.arange(-L+1, L, 1)
Y = np.arange(-L+1, L, 1)
X, Y = np.meshgrid(X, Y)

Z = V
surf = ax.plot_surface(X, Y, Z, rstride=1, cstride=1, cmap=cm.coolwarm,
                       linewidth=0, antialiased=False)
ax.set_zlim(-1.01, 1.01)
ax.zaxis.set_major_locator(LinearLocator(10))
ax.zaxis.set_major_formatter(FormatStrFormatter('%.02f'))

fig.colorbar(surf, shrink=0.5, aspect=5)

ax.set_xlabel("X Axis")
ax.set_ylabel("Y Axis")
ax.set_zlabel("Potential")
ax.set_title("Electric Potential")
plt.savefig('figure_1')

plt.show()
```

