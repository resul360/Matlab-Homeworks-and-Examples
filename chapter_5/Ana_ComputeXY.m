clc
clear all
help ComputeXY_1

a=1.4;b=2;c=0.75;t=0:pi/4:pi;
% [u,v]=ComputeXY_1(t,a,b,c)

w=[1.4,2,0.75];
[z]=ComputeXY_2(t,w)

 [z]=ComputeXY_3(t,w)

% [x y]=ComputeXY_4(t,w)

% [x, y] = ComputeXY_5(t, a, b, c)
 [x, y] = ComputeXY_5(t, a, b)

global A B C
A=1.4;B=2;C=0.75;t=0:pi/4:pi;
[x,y] = ComputeXY_6(t)

n=4;a=linspace(1,1.4,n);t=0:pi/4:pi;
p=zeros(n,length(t));
for k=1:n
    p(k,:)=ComputeXY_1(t,a(k),sqrt(1.8/(1+k)^3),1/0.85);
end
p

