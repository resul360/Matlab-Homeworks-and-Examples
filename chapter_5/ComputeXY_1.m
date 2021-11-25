  function[x,y]=ComputeXY_1(t,a,b,c)
% Computation of -
% x = cos(at)+b
% y = ƒ x ƒ+c
% Scalars: a, b, c
% Vectors: t, x, y
x = cos(a*t)+b;
y = abs(x)+c;
  
 
 
 