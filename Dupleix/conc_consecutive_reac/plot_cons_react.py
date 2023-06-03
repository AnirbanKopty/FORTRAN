import numpy as np
import matplotlib.pyplot as plt

data1 = np.loadtxt('cons1_plot.dat', unpack=True)
data2 = np.loadtxt('cons2_plot.dat', unpack=True)
k1, k2 = np.loadtxt('param.dat', unpack=True)

fig, ax = plt.subplots(1,2, figsize=[14,5])
for data, iax, i in zip([data1,data2], ax, [0,1]):
    iax.plot(data[0], data[1], label='A')
    iax.plot(data[0], data[2], label='B')
    iax.plot(data[0], data[3], label='C')
    iax.set_xlabel('t in s')
    iax.set_title(f'k1 = {k1[i]:.4f},  k2 = {k2[i]:.4f}')

ax[0].set_ylabel('Concentration')
ax[1].legend()
plt.suptitle('Consecutive Reactions A $\\rightarrow$ B $\\rightarrow$ C')
plt.tight_layout()
plt.savefig('cons_reac.png')