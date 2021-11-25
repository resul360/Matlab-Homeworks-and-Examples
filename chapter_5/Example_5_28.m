function Example_5_28
clc,clear all;
syms x
r = dsolve('D4w-sin(pi*x)','w(0) = 0', 'Dw(0) = 0', 'D3w(1) = 0', 'D2w(1) = 0', 'x');
dis = inline(vectorize(r), 'x');
disp(['Displacement at the free end = ' num2str(dis(1))])
xx=linspace(0,1,100);
plot(xx,-dis(xx),'r*')
grid on

