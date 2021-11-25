function [m,s]=MeanStdDev(x)
n=length(x);
m=Meen(x,n);
s=StdDev(x,n);

function m=Meen(xx,nn)
m=sum(xx)/nn;

function ss=StdDev(xxx,nnn)
m=Meen(xxx,nnn);
ss=sqrt((sum(xxx.^2)-nnn*Meen(xxx,nnn)^2)/(nnn-1));