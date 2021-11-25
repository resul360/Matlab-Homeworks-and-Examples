
clc,clear all;
figure
x = -5:0.2:5; % (1×51)
a = 1:5; % (1×5)
[xx, aa] = meshgrid(x.^2, a.^2); % (5×51)
plot(x, aa-xx, 'k')
figure
aa = 1:3; % (1×3)
N = 1:10; % (1×10)
[a, k] = meshgrid(aa, N); % (10×3)
S = cumsum(1./(a+k).^2); % (10×3)
plot(N, S, 'ks-')