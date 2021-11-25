clc
clear all
% p=input('y polinomunun katsayýlarýný satýr vektör olarak giriniz:');
% s=input('z polinomunun katsayýlarýný satýr vektör olarak giriniz:');
% p=[1,2,3,4];s=[10,20,30,40];
% p=[11 12 13 14];s=[101 102];
p=[43,54,55];s=[77,66,88,44,33];
n=length(p);m=length(s);
if m<n
    h=zeros(1,n);
    for i=1:n-m
        h(i)=p(i);
    end
    for i=n-m+1:n
        h(i)=p(i)+s(i-n+m);
    end
elseif m>n
    h=zeros(1,m);
    for i=1:m-n
        h(i)=p(i);
    end
    for i=m-n+1:m
        h(i)=s(i)+p(i-m+n);
    end
else
    h=zeros(1,n);
    for i=1:n
        h(i)=p(i)+s(i);
    end
   
end
h