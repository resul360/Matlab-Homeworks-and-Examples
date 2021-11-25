function Exercise_5_33
clc;clear all;
eps=0.16;gama=0.4;omega=0.97;

[x sol]=ode45(@OdeBvp,[0,100],[-1,1],[],eps,gama,omega);


plot(sol(:,1),sol(:,2))
grid on
figure
subplot(1,2,1)
plot(x,sol(:,1))
grid on
subplot(1,2,2)
plot(x,sol(:,2))
grid on

function dydx=OdeBvp(x,y,eps,gama,omega)
L=1+eps*sin(omega*x+9*pi/8)^7;
dLdt=7*eps*omega*sin(omega*x+9*pi/8)^6*cos(omega*x+9*pi/8);
dydx=[y(2);-(2*dLdt/L+gama*L)*y(2)-sin(y(1))/L];
