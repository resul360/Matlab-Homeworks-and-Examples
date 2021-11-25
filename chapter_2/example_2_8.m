clc
clear all
b = [0.319381530, -0.356563782, 1.781477937,-1.821255978, 1.330274429]; % (1×5)
m = 1:length(b); % (1×5)
x = 0:0.2:3; % (1×16)
[mm, Xm] = meshgrid(m, (1./(1+0.231641*x))); % (16×5)
bmx = meshgrid(b, x); % (16×5)
Px = 1 - exp(-0.5*x.^2).*sum((bmx.*(Xm.^mm))')/sqrt(pi*2); % (1×16)
plot([-fliplr(x), x], [fliplr(1-Px), Px])