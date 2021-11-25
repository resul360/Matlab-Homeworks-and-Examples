clc
clear all
rr=linspace(0.5,1,3);thet=linspace(0,pi/2,4);
[r,theta]=meshgrid(rr,thet)
x=r.*cos(theta)
y=r.*sin(theta)
