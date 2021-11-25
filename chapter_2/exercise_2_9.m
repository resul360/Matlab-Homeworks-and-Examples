clc
clear all
a=1;b=1.5;e=0.3;
phi=0:2:360;
s=a*cosd(phi)+(b^2-(a*sind(phi)-e).^2).^0.5;
plot(phi,s)