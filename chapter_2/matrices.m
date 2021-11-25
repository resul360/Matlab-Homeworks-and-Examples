clc
clear all
s=1,d=1,f=10
% x=s:d:f
% xx=(s:d:f)
% xxx=[s:d:f]
% length(x)

x=[s:d:f]'
length(x)
y=linspace(s,f,10)
z=logspace(0,2,5)

% x=linspace(0,2*pi,50)
% f=sin(x)
% fAvgNeg=mean(f(find(f<0)))

% A=[3:2:11;linspace(20,21,5);ones(1,5)]
% 
% Z=magic(4)
%  Z=Z-diag(diag(Z))+diag([11 23 54 61])
% m=magic(3)
% [r c]=find(m>5)
% find(m>5)