% function Example_5_26
% clc,clear all;
% syms t xi n r a
% r = sqrt(1- xi^2);
% arg = exp(xi*n)*sin(r*(t-n));
% yt = exp(-xi*t)*int(arg, n, 0, t)/r;
% yoft = inline(vectorize(yt), 't', 'xi');
% tt = linspace(0, 20, 200); z = 0.15;
% plot(tt, yoft(tt, z))
% grid on

z = 0.15;
syms t xi n r a
r = sqrt(1- xi^2);
arg = exp(xi*n)*sin(r*(t-n));
yt = exp(-xi*t)*int(arg, n, 0, t)/r;
yoft = inline(vectorize(yt), 't', 'xi');
dydt = inline(vectorize(diff(yt, t)), 't', 'xi');
tmax = fzero(dydt, [3 5],[], z);
ymax = yoft(tmax, z);
% disp('ymax = ' num2str(ymax) ' tmax = ' num2str(tmax)])
fprintf('ymax =%f   tmax =%f\n', ymax, tmax);
d2ydt2 = inline(vectorize(diff(yt, t, 2)), 't', 'xi');
secder = d2ydt2(tmax, z);
tt = linspace(0, 20, 200); z = 0.15;
plot(tt, yoft(tt, z))
disp(['Second derivative at tmax =' num2str(secder)])

z = 0.15;
syms t xi n r a
r = sqrt(1- xi^2);
arg = exp(xi*n)*sin(r*(t-n));
yt = exp(-xi*t)*int(arg, n, 0, t)/r;
ytrise = inline(vectorize(yt-a), 't', 'xi', 'a');
t9 = fzero(ytrise, [0 2], [], z, 0.9);
t1 = fzero(ytrise, [0 2], [], z, 0.1);
disp(['Rise time = ' num2str(t9-t1)])