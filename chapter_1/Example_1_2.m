
clc
clear all
g = 9.8; d = 2; th = pi/3; % Input
Dc = d/2*(1-cos(th));
Qnum = 2^(3/2)*Dc^(5/2)*sqrt(g)*(th-0.5*sin(2*th))^(3/2);
Qden = 8*sqrt(sin(th))*(1-cos(th))^(5/2);
Q = Qnum/Qden % m^3/s