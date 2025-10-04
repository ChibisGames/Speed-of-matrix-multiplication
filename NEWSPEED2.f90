! Тестирование быстродействия - Fortran 90
program speed_test
  implicit none
  integer, parameter :: n = 500, k = 100
  real*8 :: a(n,n), b(n,n), r(n,n)
  integer :: i, j, l
  
  do l = 1, k
    do j = 1, n
      do i = 1, n
        a(i,j) = i*n + j
        b(i,j) = j*n + i
      end do
    end do
    call dmul2(a, b, r, n, n, n)
  end do
end program speed_test

!=======================================================================
!     D M U L 2
!  УМНОЖЕНИЕ ДВУХ МАТРИЦ:
!     R[N,L] = A[N,M] * B[M,L]  (R#A,B)
!=======================================================================
subroutine dmul2(A, B, R, N, M, L)
  implicit none
  integer, intent(in) :: N, M, L
  real*8, intent(in) :: A(N,M), B(M,L)
  real*8, intent(out) :: R(N,L)
  integer :: i, j, k
  
  do j = 1, L
    do i = 1, N
      R(i,j) = 0.0d0
    end do
    do k = 1, M
      do i = 1, N
        R(i,j) = R(i,j) + A(i,k) * B(k,j)
      end do
    end do
  end do
end subroutine dmul2
