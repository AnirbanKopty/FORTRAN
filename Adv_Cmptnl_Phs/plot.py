from cProfile import label
import matplotlib.pyplot as plt
import numpy as np

data1 = np.loadtxt("gauss_dist.dat")

plt.figure("Gaussian Distribution")
plt.hist(data1, bins=100)
plt.title("Gaussian Distribution with 100000 random numbers")
# plt.savefig("Gaussian_distribution.png")

plt.show()