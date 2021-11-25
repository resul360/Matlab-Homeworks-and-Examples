function Example_5_27
clc,clear all;

% z = solve('x^2/4+y^2-1', 'y-4*x^2+3', 'x', 'y')
% x = z.x
% y = z.y
% double(x)

z = solve('x^2/4+y^2-1', 'y-4*x^2+3', 'x', 'y');
v = [double(z.x) double(z.y)];
disp(['    x     y'])
disp(v)
