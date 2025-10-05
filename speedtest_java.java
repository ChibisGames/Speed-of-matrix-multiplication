public class speedtest_java {
    /**
     * DMUL2
     * УМНОЖЕНИЕ ДВУХ МАТРИЦ:
     * R[N,L] = A[N,M] * B[M,L]  (R#A,B)
     */
    public static void dmul2(double[][] a, double[][] b, double[][] r, int n, int m, int l) {
        for (int i = 0; i < n; i++) {
            for (int k = 0; k < m; k++) {
                for (int j = 0; j < l; j++) {
                    r[i][j] += a[i][k] * b[k][j];
                }
            }
        }
    }
    
    public static void main(String[] args) {
        int n = 500;
        int k = 100;

        double[][] a = new double[n][n];
        double[][] b = new double[n][n];
        double[][] r = new double[n][n];

        for (int l = 0; l < k; l++) {            
            for (int i = 0; i < n; i++) {
                for (int j = 0; j < n; j++) {
                    a[i][j] = (j + 1) * n + i + 1;
                    b[i][j] = (i + 1) * n + j + 1;
                }
            }
            
            dmul2(a, b, r, n, n, n);
        }
        
    }
}
