#include <iostream>


using namespace std;


void dmul2(double**& a, double**& b, double**& r, int n, int m, int l) {
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

    double** a = new double*[n];
    double** b = new double*[n];
    double** r = new double*[n];
        
    for (int i = 0; i < n; i++) {
        a[i] = new double[n];
        b[i] = new double[n];
        r[i] = new double[n];
    }

    for (int l = 0; l < k; l++) {

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                a[i][j] = (j + 1) * n + i + 1;
                b[i][j] = (i + 1) * n + j + 1;
                r[i][j] = 0;
            }
        }
        
        dmul2(a, b, r, n, n, n);
    }

    for (int i = 0; i < n; i++) {
        delete[] a[i];
        delete[] b[i];
        delete[] r[i];
    }
    
    delete[] a;
    delete[] b;
    delete[] r;

    return 0;
}