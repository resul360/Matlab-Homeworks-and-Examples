function Ornek_5_2
Bi=1;
x= linspace(0, 1, 100); t = linspace(0, 3, 10);
u= pdepe(0, @pde1D,@pdeIC,@pdeBC, x, t,[],Bi);
xi= linspace(0, 1, 1000);
% sol=deval(u,xi)

surface(x,t,u)
title('Numerical solution computed with 100 mesh points.')
xlabel('Distance x')
ylabel('Time t')
figure
for kk = 1:10:length(x)
plot(t, u(:, kk), 'b-')
hold on
end
function [c, f, s] = pde1D(x, t, u, DuDx,Bi)
c = 1; f = DuDx; s = 0;
function u0 = pdeIC(x,Bi)
u0 = 1;
function [pl, ql, pr, qr] = pdeBC(xl, ul, xr, ur, t,Bi)
pl = 0; ql = 1;pr = Bi*ur; qr = 1;