function Example_5_25
clc,clear all;
syms s t
syms xi real
den = s*(s^2+2*xi*s+1);
yt = ilaplace(1/den, s, t);
%yoft = inline(vectorize(yt), 't', 'xi')
yoft = matlabFunction(yt, 'vars', [t xi]);

t = linspace(0, 20, 200); xi = 0.15;
plot(t, real(yoft(t, xi)))
grid on



