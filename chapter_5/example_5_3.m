clc
xi = 0.1;
tau = linspace(0,4.5,15);
U=linspace(0,4.5,100)
% newtau=linspace(0,4.5,150)
% newdata = DampedSineWave(newtau, xi);
data = DampedSineWave(tau, xi);
TauZero1 = interp1(data,tau,0)
TauZero = interp1(tau,data,U)
plot(tau,data,'*')
plot(U,TauZero)
hold on 
plot([0,4.5],[0,0],'r')
grid on
