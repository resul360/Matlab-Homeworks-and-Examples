clc
clear all
k=1:150
tau=linspace(-0.5,0.5,100)
sk=sin(pi*k/4)./(pi*k/4)
cntau=cos(2*pi*k'*tau)
f=0.25*(1+2*sk*cntau)
plot(tau,f)