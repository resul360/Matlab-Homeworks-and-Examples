clc,clear all
x = -5:0.2:5; % (1×51)
a = 1:5; % (1×5)
[xx, aa] = meshgrid(x.^2, a.^2); % (5×51)
plot(x, aa-xx, 'r')

x = linspace(0, 3.5);
plot(x, [0.1*x.^2; cos(x).^2; exp(-0.3*x)], 'k')

th = linspace(0, 2*pi, 101);
x = sin(th);
y = sin(2*th+pi/4);
plot(x, y, 'r-')
grid on
