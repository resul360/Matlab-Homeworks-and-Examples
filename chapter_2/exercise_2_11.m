clc
clear all
xx=1:0.5:5;a=sqrt(2.8);
nn=1:100;
[x,n]=meshgrid(xx,nn)

sn=prod(1-x.^2./(n.^2-a^2))
ss=(a./sqrt(a^2+xx.^2)).*sin(pi*sqrt(a^2+xx.^2))./sin(pi*a)
err=(sn-ss)./ss*100