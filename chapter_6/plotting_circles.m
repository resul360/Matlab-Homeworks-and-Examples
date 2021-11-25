
clc,clear all;
figure
theta = linspace(0, 2*pi);
plot(1+0.5*cos(theta), 2+0.5*sin(theta))
axis equal
figure
theta = linspace(0, 2*pi, 50); % (1×50)
rad = 0.5:0.25:1.75; % (1×6)
x = 1+cos(theta') *rad; % (50×6)
y = 2+sin(theta') *rad; % (50×6)
plot(x, y, 'k', 1, 2, 'k+')
axis equal
