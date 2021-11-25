function Exercise_5_5
clc
x0=linspace(0,10,100);b=2;
plot([0 10],[0 0],'r-')
hold on
plot(x0,Fonk_5_5(x0,b))
grid on
fzero(@Fonk_5_5,5,[],b)

function z=Fonk_5_5(x,b)
z=besselj(0,x).*bessely(0,b*x)-besselj(0,x*b).*bessely(0,x);