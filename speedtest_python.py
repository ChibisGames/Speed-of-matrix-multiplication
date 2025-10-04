
def dmul2(a, b, r, n, m, l):
    """
    DMUL2
    УМНОЖЕНИЕ ДВУХ МАТРИЦ:
    R[N,L] = A[N,M] * B[M,L]  (R#A,B)
    """
    for i in range(n):
        for k in range(m):
            for j in range(l):
                r[i][j] += a[i][k] * b[k][j]


def main():
    n = 500
    k = 100

    for l in range(k):
        a = [[float(i * n + j) for i in range(1, n + 1)] for j in range(1, n + 1)]
        b = [[float(j * n + i) for i in range(1, n + 1)] for j in range(1, n + 1)]
        r = [[.0 for _ in range(n)] for __ in range(n)]
        dmul2(a, b, r, n, n, n)


if __name__ == "__main__":
    main()