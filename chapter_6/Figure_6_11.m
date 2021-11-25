


Om = logspace(-1, 1, 200);
[H, T] = FOm(Om, 0.05);
plotyy(Om, H, Om, T, 'loglog', 'semilogx')