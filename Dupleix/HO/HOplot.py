import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt('HOplot.dat')
data2 = np.loadtxt('HOsqplot.dat')

#? This is just to create 1D variable arrays for each data, one could simply use the whole 2D array and pick particular sections for plots
x = data[:,0]
for i in range(1,data.shape[1]-1):
    exec(f"Psi{i-1} = data[:,i]")
# Psi0 = data[:,1]
# Psi1 = data[:,2]
# Psi2 = data[:,3]
# Psi4 = data[:,4]
for i in range(1,data2.shape[1]-1):
    exec(f"Psisq{i-1} = data2[:,i]")


#TODO Plotting
fig, [ax1, ax2] = plt.subplots(1,2)

for i in range(1,data.shape[1]-1):
    exec(f"ax1.plot(x, Psi{i-1}, label='$\psi_{i-1}$')")
# ax1.plot(x, Psin) for n = 0 to 4
    exec(f"ax2.plot(x, Psisq{i-1}, label='$\psi^2_{i-1}$')")

ax1.set_xlabel('x')
ax2.set_xlabel('x')
ax1.legend()
ax2.legend()

ax1.tick_params(left = False, labelleft = False)
ax2.tick_params(left = False, labelleft = False)

fig.tight_layout(pad=3)
plt.suptitle('Wave Functions of Harmonic Oscillator for CO')
plt.savefig('HOplot.png')