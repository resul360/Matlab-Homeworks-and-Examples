function bvpExample
clc;clear all;
k=100;
solinit=bvpinit(linspace(0,1,101),[-0.05,0.1]);
exmpsol=bvp4c(@OdeBvp,@OdeBc,solinit,[],k);
x=linspace(0,1,100);
yy=deval(exmpsol,x);
plot(x,yy(1,:),'r+')
hold on
xlabel('zaman')
grid on

function dydx=OdeBvp(x,y,k)
dydx=[y(2);k*x*y(1)];

function res=OdeBc(ya,yb,k)
res=[ya(1)-0.1;yb(1)-0.05];