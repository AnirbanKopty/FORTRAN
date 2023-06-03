import numpy as np
import matplotlib.pyplot as plt

data = np.loadtxt("data.dat", unpack=True)
plt.plot(data[0], data[1], '.', label='Fortran')


##? Uncomment the below code to see the same data generated in Python
# n = range(1,11)
# f = []
# for i in n:
#     f.append( ( 1+ (20/i)/(20) )**i )
# plt.plot(n, f, '.', label='Python')
# plt.legend()


plt.xlabel("n")
plt.title("Percentage Extraction")
plt.savefig("Solvent_extr.png")