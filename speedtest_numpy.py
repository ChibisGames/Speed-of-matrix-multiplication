import numpy as np


def main():
    n = 500
    k = 100

    a = np.matrix([[.0 for _ in range(n)] for __ in range(n)])
    b = np.matrix([[.0 for _ in range(n)] for __ in range(n)])
    r = np.matrix([[.0 for _ in range(n)] for __ in range(n)])

    for l in range(k):
        for i in range(n):
            for j in range(n):
                a[i, j] = float((j + 1) * n + i + 1)
                b[i, j] = float((i + 1) * n + j + 1)
                r[i, j] = .0
        r = a @ b

if __name__ == "__main__":
    main()