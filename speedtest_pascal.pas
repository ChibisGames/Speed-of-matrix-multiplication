program SpeedTest;

type
  Matrix = array of array of Double;

procedure dmul2(a, b, r: Matrix; n, m, l: Integer);
{
  DMUL2
  УМНОЖЕНИЕ ДВУХ МАТРИЦ:
  R[N,L] = A[N,M] * B[M,L]  (R#A,B)
}
var
  i, j, k: Integer;
begin
  for i := 0 to n - 1 do
    for k := 0 to m - 1 do
      for j := 0 to l - 1 do
        r[i][j] := r[i][j] + a[i][k] * b[k][j];
end;

var
  n, k, l, i, j: Integer;
  a, b, r: Matrix;
begin
  n := 500;
  k := 100;

  for l := 0 to k - 1 do
  begin
    SetLength(a, n, n);
    SetLength(b, n, n);
    SetLength(r, n, n);
    
    // Initialize r with zeros
    for i := 0 to n - 1 do
      for j := 0 to n - 1 do
        r[i][j] := 0.0;
    
    for i := 0 to n - 1 do
      for j := 0 to n - 1 do
      begin
        a[i][j] := (j + 1) * n + i + 1;
        b[i][j] := (i + 1) * n + j + 1;
      end;
    
    dmul2(a, b, r, n, n, n);
    
    SetLength(a, 0);
    SetLength(b, 0);
    SetLength(r, 0);
  end;
end.