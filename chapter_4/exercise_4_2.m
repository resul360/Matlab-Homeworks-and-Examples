clc
clear
x=[45 38 47 41 35 43];

for n=2:length(x)
z(n-1)=(sum(x(1:n).^2)-n*(sum(x(1:n))/n)^2)/(n-1);
end
z