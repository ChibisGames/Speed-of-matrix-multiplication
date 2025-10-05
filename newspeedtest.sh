#!/bin/bash

echo "===== Compiling files ====="

echo "Fortran (Suhanov's version):"
gfortran -O3 -march=native -std=legacy SPEED2.FOR -o SPEED2 && echo "Успех!" || echo "Ошибка!"

echo "Fortran (new version):"
gfortran -O3 -march=native NEWSPEED2.f90 -o NEWSPEED2 && echo "Успех!" || echo "Ошибка!"

echo "C:"
gcc -O3 -march=native speedtest_c.c -o speedtest_c && echo "Успех!" || echo "Ошибка!"

echo "C++:"
g++ -O3 -march=native speedtest_cpp.cpp -o speedtest_cpp && echo "Успех!" || echo "Ошибка!"

echo "Java:"
javac speedtest_java.java && echo "Успех!" || echo "Ошибка!"

echo "Pascal:"
fpc -O3 speedtest_pascal.pas && echo "Успех!" || echo "Ошибка!"


echo "=== Fortran (Suhanov's version) ==="
time ./SPEED2

echo "=== Fortran (new version) ==="
time ./NEWSPEED2

echo "=== C ==="
time ./speedtest_c

echo "=== C++ ==="
time ./speedtest_cpp

echo "=== Java ==="
time java speedtest_java

echo "=== Pascal ==="
time ./speedtest_pascal


echo "===== REMOVING EXE FILES ====="

echo "Fortran (Suhanov's version):"
rm SPEED2 && echo "Успех!" || echo "Ошибка!"

echo "Fortran (new version):"
rm NEWSPEED2 && echo "Успех!" || echo "Ошибка!"

echo "C:"
rm speedtest_c && echo "Успех!" || echo "Ошибка!"

echo "C++:"
rm speedtest_cpp && echo "Успех!" || echo "Ошибка!"

echo "Java:"
rm speedtest_java.class && echo "Успех!" || echo "Ошибка!"

echo "Pascal:"
rm speedtest_pascal && echo "Успех!" || echo "Ошибка!"
rm speedtest_pascal.o && echo "Успех!" || echo "Ошибка!"

echo "===== END PROCESS ====="
