clc
clear all
syms x y z
f=sin(x*y)+cos(y^2)-sqrt(z)*x;

 fnct1 = inline(vectorize(f), 'x', 'y', 'z')
 fnct2 = matlabFunction(f, 'vars', [x,y,z])

fnct3= matlabFunction(f, 'file', 'benim_dosyam')
