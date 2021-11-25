
clc,clear all;
figure
subplot(2,2,1)
th = linspace(0, 2*pi, 101);
plot(sin(th), sin(2*th+pi/4))

subplot(2,2,2)

th = linspace(0, 2*pi, 101);
x = sin(th);
y = sin(2*th+pi/4);
plot(x, y, 'k-')
box on
grid on


subplot(2,2,3)
th = linspace(0, 2*pi, 101);
x = sin(th);
y = sin(2*th+pi/4);
plot(x, y, 'k-')
box off
grid off
axis off

subplot(2,2,4)

h = linspace(0, 2*pi, 101);
 x = sin(th);
 y = sin(2*th+pi/4);
plot(x, y, 'k-')
box off
grid off
