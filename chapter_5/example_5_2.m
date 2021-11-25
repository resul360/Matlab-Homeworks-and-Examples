clc
n = 8; xi = 0.1;
tau = linspace(0, 20, n);
data = DampedSineWave(tau, xi);
newtau = linspace(0, 20, 200);
yspline = spline(tau, data, newtau);
yexact = DampedSineWave(newtau, xi);

yp=polyfit(tau,data,6);ypp=polyval(yp,newtau);
plot(newtau, yspline, 'k--',newtau, yexact, 'k-')
% grid on
% hold on
% plot(newtau, ypp, 'r-')