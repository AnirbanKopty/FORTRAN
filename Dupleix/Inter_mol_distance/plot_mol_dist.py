import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt("mol_plot.dat", unpack=True)

# finding where peak is
J_max = data[0][np.where(data[1]==max(data[1]))[0][0]]

ax = plt.axes()
plt.plot(data[0], data[1], '.', label='Fortran')


# ##? To do the same plot within Python, uncomment these lines
# dim = 31; h = 6.626*10**(-34); c = 3*10**8; k = 1.38*10**(-23)
# T = 298; B = 193.2; J = range(31)
# Expr = []
# for itr in J:
#     gJ = 2*itr+1
#     EJ = B*h*c * itr*(itr+1)
#     Expr.append(gJ * np.exp(-EJ/(k*T)))
# plt.plot(J, Expr, '.', label='Python')
# plt.legend(loc=5)



plt.vlines(J_max, 0, max(data[1]), linestyles='--')
plt.text(.99, .99, f'Jmax = {int(J_max)}', va='top', ha='right', transform=ax.transAxes)
plt.xlabel("J")
plt.title("Plot of Jmax")
plt.savefig("Jmax.png")