
clc,clear all

subplot(3,1,1)
Om = linspace(0.01, 10, 200);
[H, T] = FOm(Om, 0.05);
semilogx(Om, H)

subplot(3,1,2)
Om = linspace(0.01, 10, 200);
[H, T] = FOm(Om, 0.05);
semilogy(Om, H)

subplot(3,1,3)
Om = linspace(0.01, 10, 200)
[H, T] = FOm(Om, 0.05);
loglog(Om, H)