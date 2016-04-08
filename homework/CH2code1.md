```python
# coding: utf-8
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import axes3d


class State:
    """
    The state of a cannon specified at any time step.
    """
    def __init__(self):
        'SI unit'
        self.ax = [0]
        self.ay = [0]
        self.az = [0]
        self.speed = [0]
        self.vx = [0]
        self.vy = [0]
        self.vz = [0]
        self.x = [0]
        self.y = [0]
        self.z = [0]
        self.t = [0]
    ax = []
    ay = []
    az = []

    theta = 30  # With respect to y-axis
    phi = 0  # With respect to y-axis
    speed = []
    vx = []
    vy = []
    vz = []

    x = []  # South
    y = []  # East
    z = []  # Height
    t = []  # Time
    pass

tau = 0.1  # (s) Time step
angular_velocity_earth = 7.272 * 10**(-5)  # (SI) rad/s

b2 = 4 * 10 ** (-5)  # B2 / m
a = 6.5 * 10 ** (-3)
alpha = 2.5
T0 = 300  # in Kelvin

lat = float(raw_input('The latitude of artillery is')) / 180 * np.pi  # In degree

target = [0,30000,0]

omega = angular_velocity_earth * np.cos(lat)
omegax = - omega * np.cos(lat)
omegaz = omega * np.sin(lat)

# print 'This is an apple '
cannon = State()


def initial_velocity(init_angle,init_speed,init_direc):
    cannon.theta = init_angle /180 * np.pi
    cannon.phi = init_direc / 180 * np.pi
    cannon.speed[0] = init_speed
    cannon.vx[0] = init_speed * np.cos(cannon.theta) * np.sin(cannon.phi)
    cannon.vy[0] = init_speed * np.cos(cannon.theta) * np.cos(cannon.phi) #
    cannon.vz[0] = init_speed * np.sin(cannon.theta)  #
    pass

# print cannon.x[-1],cannon.vx[-1],cannon.ax[-1]

def fly_trajectory():
    count = 1
    while not cannon.z[-1]<0:
        c = b2 * (1-a*cannon.z[-1]/T0)**alpha
        g = 9.78049 * (1 + 0.005288 * np.sin(lat ** 2) - 0.000006 * np.sin(2 * lat ** 2)) - 0.0003086 * cannon.z[-1]

        cannon.speed.append(np.sqrt(cannon.vx[-1]**2 + cannon.vy[-1]**2 + cannon.vz[-1]**2))
        cannon.ax.append(2 * cannon.vy[-1] * omegaz - c * cannon.speed[-1] * cannon.vx[-1])
        cannon.ay.append(-c * cannon.speed[-1] * cannon.vy[-1] + 2*(cannon.vz[-1] * omegax - cannon.vx[-1] * omegaz))
        cannon.az.append(-g - c * cannon.speed[-1] * cannon.vz[-1] + 2*(-cannon.vy[-1] * omegax))

        cannon.vx.append(cannon.vx[-1] + tau * cannon.ax[-1])
        cannon.vy.append(cannon.vy[-1] + tau * cannon.ay[-1])
        cannon.vz.append(cannon.vz[-1] + tau * cannon.az[-1])

        cannon.x.append(cannon.x[-1] + tau * cannon.vx[-1])
        cannon.y.append(cannon.y[-1] + tau * cannon.vy[-1])
        cannon.z.append(cannon.z[-1] + tau * cannon.vz[-1])
        cannon.t.append(tau*count)
        count += 1


    r = (cannon.z[-2] - cannon.z[0]) / (cannon.z[0]-cannon.z[-1])

    r1 = 1 / (1+r)
    r2 = r / (1+r)
    cannon.x.append(r1*cannon.x[-2] + r2*cannon.x[-1])
    cannon.y.append(r1*cannon.y[-2] + r2*cannon.y[-1])
    cannon.z.append(0)
    pass



initial_velocity(init_angle=35.5 ,init_speed=778,init_direc = -0.09)
fly_trajectory()


# print correction()
applicable=[]
# applicable=[(37.5,764),(37.2,766),(36.9,768),(36.6,770),(35.5,778),(34.0,790),(33.1,798),(30.5,824)]
def hit():
    for i in range(100):
        for j in range(100):
            angle = 30.0 + j*0.1
            speed = 700+i*2
            initial_velocity(init_angle=angle,init_speed=speed,init_direc=0.0)
            fly_trajectory()
            # print cannon.y[-1], angle
            if np.abs(cannon.y[-1] - target[1]) < 5:
                applicable.append((angle,speed))
                print applicable[-1],np.abs(cannon.y[-1]-target[1])

            cannon.__init__()


    return
# hit()


def correction(initangle,initspeed):
    def IsDirect():
        if cannon.x[-1]-cannon.x[0]<1:
            return True

    correction = 0
    while True:
        cannon.__init__()
        initial_velocity(init_angle=initangle ,init_speed=initspeed,init_direc = -correction)
        fly_trajectory()
        if IsDirect():
            break
        correction += 0.01
    return correction


precise = []
def precise_hit():
    for i in range(len(applicable)):
        print applicable[i]
        direction = -correction(applicable[i][0],applicable[i][1])
        print direction
        precise.append((applicable[i][0],applicable[i][1],direction))
    return
# precise_hit()

# print precise
# print precise[0][2],precise[0][1],precise[0][0]

# print 'speed=',cannon.speed
# print '%6.2f, %6.2f, %6.2f' % (cannon.vx[-1],cannon.vy[-1],cannon.vz[-1])
# print 'x=',cannon.x,'vx=',cannon.vx,'ax=',cannon.ax
# print 'z=',cannon.z,'vz=',cannon.vz,'az=',cannon.az


fig = plt.figure()
ax = fig.gca(projection='3d')
plt.xlim(-7000,7000)


#for i in range(len(applicable)):
    #cannon.__init__()
   # initial_velocity(init_angle=precise[i][0],init_speed=precise[i][1],init_direc=precise[i][2])
   # fly_trajectory()
ax.plot(cannon.x, cannon.y, cannon.z,label="x deviation 2.33m")

ax.legend(loc='upper right')
ax.set_xlabel("South-X Axis")
ax.set_ylabel("East-Y Axis")
ax.set_zlabel("Height-Z Axis")

ax.scatter(0,0,0,c='b',marker = 'o')
ax.scatter(target[0],target[1],cannon.z[-1],c='r',marker='^')
plt.show()

#
print cannon.x[-1]-cannon.x[0]
print cannon.y[-1]-cannon.y[0]
print cannon.z[-1]-cannon.z[0]
print 'Total time is',cannon.t[-1],'s'

# END

```

