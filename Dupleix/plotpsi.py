import numpy as np
import matplotlib.pyplot as plt

psidat = np.loadtxt('psi.dat')
psisqdat = np.loadtxt('psisq.dat')

fig, ax = plt.subplots(1,2)

for i in range(1,5):
    ax[0].plot(psidat[:,0], psidat[:,i], label=f"n = {i}")
    ax[1].plot(psisqdat[:,0], psisqdat[:,i], label=f"n = {i}")

ax[0].set_ylim(-0.25,0.3)
ax[1].set_ylim(-0.005,0.03)

ax[0].set_yticks([])
ax[1].set_yticks([])

ax[0].legend()
ax[1].legend()

plt.show()