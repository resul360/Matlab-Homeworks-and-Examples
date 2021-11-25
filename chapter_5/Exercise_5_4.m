function Exercise_5_4
x0=linspace(0,10,100);
plot([0 10],[0 0],'r-')
hold on
plot(x0,Fonk_5_4(x0))
grid on
fzero(@Fonk_5_4,7)

function z=Fonk_5_4(x)
z=sin(x)-x.*cos(x);