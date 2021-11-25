function [x,y] = ComputeXY_6(t)
global A B C
x = cos(A*t)+B;
y = abs(x)+C;