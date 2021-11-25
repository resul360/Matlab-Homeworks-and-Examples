clc

FofX=inline('x.^2.*cos(a*x)-b','a','b','x')

% Çýktý þu þekildedir.
% FofX =
% 
%      Inline function:
%      FofX(a,b,x) = x.^2.*cos(a*x)-b

 g=FofX(4,1,[pi/3,pi/3.5])
