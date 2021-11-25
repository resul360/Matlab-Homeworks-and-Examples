clc
clear all
%   a  case 3
% tau=linspace(-0.5,0.5,250)
% n=1:2:401;
% p=1./n
% h=sin(2*pi*n'*tau)
% ss=4/pi*p*h
% plot(tau,ss)



%   b  case 3
% tau=linspace(-1,1,250)
% n=1:200;
% p=1./n
% h=sin(pi*2*n'*tau)
% ss=1/2+1/pi*p*h
% plot(tau,ss)

%   d  case 3
% tau=linspace(-1,1,250)
% n=1:200;
% p=1./(2*n-1).^2
% h=cos(pi*(2*n'-1)*tau)
% ss=pi/2-4/pi*p*h
% plot(tau,ss)

%   f  case 3
tau=linspace(-2,2,250)
n=2:2:106;
p=1./(n.^2-1)
h=cos(pi*n'*tau)
ss=1/pi+1/2*sin(pi*tau)-2/pi*p*h
plot(tau,ss)
