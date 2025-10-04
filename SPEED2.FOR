C  Tec?po?a??e ??c?po?e?c??
      parameter (n=500,k=100)
      real*8 a(n,n),b(n,n),r(n,n)
      do l=1,k
      do 1 j=1,n
      do 1 i=1,n
      a(i,j)=i*n+j
    1 b(i,j)=j*n+i
      call dmul2(a,b,r,n,n,n)
      enddo
      end
C=======================================================================
C     D M U L 2
C  ?EPEMHO?EH?E ?B?X MATP??:
C     R[N,L] = A[N,M] * B[M,L]  (R#A,B)
C=======================================================================
      SUBROUTINE  DMUL2(A,B,R,N,M,L)
      REAL*8 A(N,M),B(M,L),R(N,L)
C
      DO 2 J=1,L
      DO 1 I=1,N
    1 R(I,J)=0.
      DO 2 K=1,M
      DO 2 I=1,N
    2 R(I,J)=R(I,J)+A(I,K)*B(K,J)
      END
