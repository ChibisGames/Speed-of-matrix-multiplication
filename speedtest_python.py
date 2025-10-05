
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

    a = [[.0 for _ in range(n)] for __ in range(n)]
    b = [[.0 for _ in range(n)] for __ in range(n)]
    r = [[.0 for _ in range(n)] for __ in range(n)]

    for l in range(k):
        for i in range(n):
            for j in range(n):
                a[i][j] = float((j + 1) * n + i + 1)
                b[i][j] = float((i + 1) * n + j + 1)
                r[i][j] = .0
        dmul2(a, b, r, n, n, n)

if __name__ == "__main__":
    main()