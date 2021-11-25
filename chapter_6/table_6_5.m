
clc,clear all

subplot(3,1,1)
Om = linspace(0.01, 2, 30);
[H, T] = FOm(Om, 0.05);
stairs(Om, H)

subplot(3,1,2)
Om = linspace (0.01, 2, 30);
[H, T] = FOm(Om, 0.05);
stem(Om, H)

subplot(3,1,3)
Om = linspace (0.01, 2, 30);
[H, T] = FOm(Om, 0.05);
bar(Om, H, 0.6)
