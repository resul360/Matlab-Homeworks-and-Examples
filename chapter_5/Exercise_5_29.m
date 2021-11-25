function Exercise_5_29
clc
L=150;cd=.00324;mj=70;k=10;

[t, yy] = ode45(@BungJump, [0 20], [0 0], [],150,.00324,70,10);
sol = ode45(@BungJump, [0 20], [0 0], [],150,.00324,70,10);
x=linspace(0,20,101);
c= deval(sol,x,1)
cc= deval(sol,11.47,1)
ccc= deval(sol,5.998,2)
subplot(1,2,1)
plot(x, c)
% axis([0,35,-0.8,1])
% xlabel('Zaman,s');
% ylabel('Genlik,m');
% title('Titreþim');
% box off
 grid on
 subplot(1,2,2)

 plot(t, yy(:,2))
% axis([0,35,-0.8,1])
 grid on

function yy = BungJump(t,y,L,cd,mj,k)
% fprintf('%f\n',L,cd,mj,k)

yy = [y(2);-cd*sign(y(2))*y(2)^2+k/mj*(y(1)-L)*(y(1)<L)-9.8];%