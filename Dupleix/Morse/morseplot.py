import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt('morseplot.dat')

plt.plot(data[:,0], data[:,1], 'k.', markersize=2)
plt.plot(data[:,0], 1094.0/(6.022*10.0**(20)) * np.ones(len(data[:,0])))           # Plotting referece D=1094 value
plt.ylim(0,3*10**(-18))

plt.xlabel('r in m')
plt.ylabel('V in J')
plt.title('Morse Potential for CO')
plt.savefig('morseplot.png')