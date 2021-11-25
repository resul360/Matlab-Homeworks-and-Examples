
clc,clear all;
format long
figure
subplot(2,2,1)
x = 2:2:8;
y = [zeros(1, length(x)); cos(pi*x/20)];
z=[x; x]
plot([x; x], y, 'k')

subplot(2,2,2)
x = 2:2:8;
y = [zeros(1, length(x)); cos(pi*x/20)];
z=[x; x]
plot([x; x], y, 'k')
axis([1 9 0 1])

subplot(2,2,3)
x = 2:2:8;
y = [zeros(1, length(x)); cos(pi*x/20)];
plot([x; x], y, 'k',x,cos(pi*x/20),'rs')
v = axis;
v(1) = 1; v(2) = 9;
axis(v)

subplot(2,2,4)
x = 2:2:8;
y = [zeros(1, length(x)); cos(pi*x/20)];
plot([x; x], y, 'k')
hold on
plot(x, cos(pi*x/20), 's', 'MarkerEdgeColor', 'b', 'MarkerFaceColor', 'r'...
,'MarkerSize', 14)
axis([1, 9, 0, 1])
