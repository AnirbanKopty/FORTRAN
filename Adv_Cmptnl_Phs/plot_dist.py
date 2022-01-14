import matplotlib.pyplot as plt
import numpy as np

data_exp = np.loadtxt("exp_random.dat")
data_uni = np.loadtxt("uniform_random.dat")
data_gauss = np.loadtxt("gauss_random.dat")

plt.figure("Uniform Distribution")
plt.hist(data_uni, bins=100)
plt.title("Uniform Distribution with 100000 random numbers")
# plt.savefig("Uniform_dist.png")

plt.figure("Exponential Distribution")
plt.hist(data_exp, bins=100)
plt.title("Exponential Distribution with 100000 random numbers")
# plt.savefig("Exp_dist.png")

plt.figure("Gaussian Distribution")
plt.hist(data_gauss, bins=100)
plt.title("Gniform Distribution with 100000 random numbers")
# plt.savefig("Gaussian_dist.png")

# plt.figure("Gaussian Distribution (SIN)")
# plt.hist(data_gaussSIN, bins=100)
# plt.title("Gniform Distribution (SIN) with 100000 random numbers")
# # plt.savefig("GaussianSIN_dist.png")

plt.show()