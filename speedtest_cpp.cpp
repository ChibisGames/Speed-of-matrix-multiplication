#include <iostream>
#include <vector>


using namespace std;


void dmul2(const vector<vector<double>>& a, 
                                      const vector<vector<double>>& b,
                                      vector<vector<double>>&r, 
                                      int n, int m, int l) {
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
        vector<vector<double>> a(n, vector<double>(n));
        vector<vector<double>> b(n, vector<double>(n));
        vector<vector<double>> r(n, vector<double>(n, 0.0));
        
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                a[j][i] = (i + 1) * n + j + 1;
                b[j][i] = (j + 1) * n + i + 1;
            }
        }
        
        dmul2(a, b, r, n, n, n);
    }

    return 0;
}