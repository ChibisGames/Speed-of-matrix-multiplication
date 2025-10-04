#include <stdio.h>
#include <stdlib.h>

void dmul2(double** a, double** b, double** r, int n, int m, int l) {
    /*
    DMUL2
    УМНОЖЕНИЕ ДВУХ МАТРИЦ:
    R[N,L] = A[N,M] * B[M,L]  (R#A,B)
    */
    for (int i = 0; i < n; i++) {
        for (int k = 0; k < m; k++) {
            for (int j = 0; j < l; j++) {
                r[i][j] += a[i][k] * b[k][j];
            }
        }
    }
}

int main() {
    int n = 500;
    int k = 100;

    for (int l = 0; l < k; l++) {
        double** a = (double**)malloc(n * sizeof(double*));
        double** b = (double**)malloc(n * sizeof(double*));
        double** r = (double**)malloc(n * sizeof(double*));
        
        for (int i = 0; i < n; i++) {
            a[i] = (double*)malloc(n * sizeof(double));
            b[i] = (double*)malloc(n * sizeof(double));
            r[i] = (double*)calloc(n, sizeof(double));
        }
        
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                a[i][j] = (j + 1) * n + i + 1;
                b[i][j] = (i + 1) * n + j + 1;
            }
        }
        
        dmul2(a, b, r, n, n, n);
        
        for (int i = 0; i < n; i++) {
            free(a[i]);
            free(b[i]);
            free(r[i]);
        }
        free(a);
        free(b);
        free(r);
    }

    return 0;
}