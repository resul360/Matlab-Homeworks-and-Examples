clc
clear all
f1=@(x) (sin(x));
f2=@(x) abs((sin(2*x)))/2;

x0=linspace(0,2*pi,200);
y=f1(x0)-f2(x0);
B=trapz(x0,y)
plot(x0,B)
A=quadl(f1,0,2*pi)-quadl(f2,0,2*pi)
plot(x0,A)