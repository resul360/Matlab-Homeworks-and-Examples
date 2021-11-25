function ExampleFinProblem
clc;clear all;
format long
% Bu program aþaðýdaki DD'yi çözer.
% (1+beta*T)*d2T/dx2+beta*(dT/dx)^2-N^2*T=0
% x=0 da dT/dx=0;  x=1 de T=1
% Analytical Solution for Different Profiles of Fin with Temperature-Dependent
% Thermal Conductivity A. Moradi and H.Ahmadikia
beta=0.1;N=1;
solinit=bvpinit(linspace(0,1,11),[0.5,-0.5]);
exmpsol=bvp4c(@OdeBvp,@OdeBc,solinit,[],beta,N);
x=linspace(0,1,101);
yy=deval(exmpsol,x);
plot(x,yy(2,:),'r*')
grid on
table=[x;yy(1,:)]'
xlswrite('data.xlsx',table,'Temperatures', 'E1')

function dydx=OdeBvp(xi,y,beta,N)
dydx=[y(2);-beta/(1+beta*y(1))*y(2)^2+N^2/(1+beta*y(1))*y(1)];
function res=OdeBc(ya,yb,beta,N)
res=[ya(2);yb(1)-1];