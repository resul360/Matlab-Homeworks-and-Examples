function Example_5_24
clc,clear all;
x=linspace(-2,2,100);
y1=4*x.^2-3;
y2=sqrt(1-x.^2/4);

plot(x,y1,x,y2,x,-y2,'-g')
axis([-2 2 -3 3])
grid on
hold on
a=fsolve(@fonk,[0.5,-0.5])

plot(a(1),a(2),'r*')

hold on
a=fsolve(@fonk,[-0.5,0.5])
plot(a(1),a(2),'m*')

hold on
a=fsolve(@fonk,[-0.5,-0.5])
plot(a(1),a(2),'b*')

hold on
a=fsolve(@fonk,[0.5,0.5])
plot(a(1),a(2),'k*')

function f=fonk(z)
f=[z(2)-4*z(1).^2+3;z(1).^2/4+z(2).^2-1];



