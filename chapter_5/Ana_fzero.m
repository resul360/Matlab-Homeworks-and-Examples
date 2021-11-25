clc
clear all

options=optimset('display','iter','TolFun',1e-8)
f=@ (x) (exp(-x)-x);
[x fx]=fzero(f,[0 1],options)
% f=inline('exp(-x)-x','x');
% [x fx]=fzero(f,[0 1],options)
x0=0:0.01:1;
plot(x0,f(x0));
grid on
