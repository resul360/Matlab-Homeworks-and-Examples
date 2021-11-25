function Ornek_5_1
clc;clear all
x= linspace(0, 1, 100); t = linspace(0, 2, 10);
u= pdepe(0, @pde1D,@pdeIC,@pdeBC, x, t);
surface(x,t,u)
title('Numerical solution computed with 100 mesh points.')
xlabel('Distance x')
ylabel('Time t')
figure
for kk = 1:10:length(x)
plot(t, u(:, kk), 'k-')
hold on
end
function [c, f, s] = pde1D(x, t, u, DuDx)
c = pi^2; f = DuDx; s = 0;
function u0 = pdeIC(x)
u0 = sin(pi*x);
function [pl, ql, pr, qr] = pdeBC(xl, ul, xr, ur, t)
pl = ul; ql = 0;pr = pi*exp(-t); qr = 1;