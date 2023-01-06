import numpy as np
import matplotlib.pyplot as plt

wk = np.loadtxt('wk.dat')


for i in range(1,4):
    plt.plot(wk[:,0], wk[:,i], label=f"p = {i}")

plt.xlim(0,200)
plt.title("Mass Fraction of kmer in a Polymer")
plt.xlabel("k")
plt.ylabel("Mass Fraction")
plt.legend()

# plt.show()
plt.savefig("MF_plot.png")

#TODO: To check whether the area is 1 under the curve or not
def get_area(xarr, yarr):
    dx = xarr[2] - xarr[1]
    area = 0
    for i in range(len(yarr)):
        area += yarr[i] * dx

    return area

print(get_area(wk[:,0], wk[:,1]))
print(get_area(wk[:,0], wk[:,2]))
print(get_area(wk[:,0], wk[:,3]))

"""
The result turns out to be, as anticipated,
1.0002186499548835
1.0000875304537866
0.9831341571010038
"""