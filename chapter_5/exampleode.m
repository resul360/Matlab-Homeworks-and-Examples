

 function exampleode
 clc
[t, yy] = ode45(@HalfSine, [0 35], [1 0], [], 0.15);
subplot(2,2,1)
plot(t, yy(:,1))
axis([0,35,-0.8,1])
xlabel('Zaman,s');
ylabel('Genlik,m');
title('Titreþim');
box off
grid on
subplot(2,2,2)

plot(t, yy(:,2))
axis([0,35,-0.8,1])
grid off

function y = HalfSine(t, y, z)
h = sin(pi*t/5).*(t<=5);
y = [y(2); -2*z*y(2)-y(1)+h];