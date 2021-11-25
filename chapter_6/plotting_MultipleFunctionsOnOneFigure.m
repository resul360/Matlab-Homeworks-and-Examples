
clc,clear all;
figure
x = linspace(0, 3.5);
plot(x, [0.1*x.^2; cos(x).^2; exp(-0.3*x)], 'k')
figure
x = linspace(0, 3, 45);
y = linspace(1, 4, 55);
z = linspace(2, 5, 65);
plot(x, 0.1*x.^2, 'k-', y, cos(y).^2, 'k--', z, exp(-0.3*z), 'k-.')