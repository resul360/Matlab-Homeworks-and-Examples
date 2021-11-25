function [x, y] = ComputeXY_5(t, a, b, c)
if (length(t)== 1)||(nargin ~= 4)
x = NaN;
y = NaN;
return
end
x = cos(a*t)+b;
y = abs(x)+c;