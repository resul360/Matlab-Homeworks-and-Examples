clc
clear all
% case 2
n=(1:25)*pi;
eta=0:0.025:1;
xi=0:0.05:0.7;
[X1,temp1]=meshgrid(xi,(1-cos(n))./n.^3)
temp2=exp(-n'*xi)
temp3=temp1.*temp2
Rnx=sin(n'*eta)
u=4*Rnx'*temp3
mesh(xi,eta,u)
