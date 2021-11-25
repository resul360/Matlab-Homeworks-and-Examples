clc
clear all
n = 20; xi = 0.1;
tau = linspace(0, 20, n);
data = DampedSineWave(tau, xi);
alan=trapz(tau,data)
newtau = linspace(0, 20, 200);
yspline = spline(tau, data, newtau);
yexact = DampedSineWave(newtau, xi);
plot(newtau, yspline, 'k*', newtau, yexact, 'r-')
hold on
plot(newtau,0,'g-')
% grid on