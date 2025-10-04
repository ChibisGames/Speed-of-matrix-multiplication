import numpy as np


def main():
    n = 500
    k = 100

    for l in range(k):
        a = np.matrix([[float(i * n + j) for i in range(1, n + 1)] for j in range(1, n + 1)])
        b = np.matrix([[float(j * n + i) for i in range(1, n + 1)] for j in range(1, n + 1)])
        r = a * b


if __name__ == "__main__":
    main()