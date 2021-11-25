
clc
clear all
 r = 0.5;
Arg = @(x, y) (exp(-(x.^2-2*r*x.*y+y.^2)));
P = dblquad(Arg, -3, 3, -2, 2)/2/pi/sqrt(1-r^2)