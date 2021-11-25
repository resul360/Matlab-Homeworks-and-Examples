%% shooting method
clear all;clc;
h=0.2; % aralýk deðeri yada artýþ miktarý
x=0:h:1;
x0=0; 
y0=0;
format long, single(10);
m=length(x);
e=5;  % baþlangýç hata deðeri
k0=-1;  % baþlangýç tahmini deðerimiz
while e>2
for i=1:m
    fk1=(-5*x0^2+(5-x0)*y0*k0)/5;
    fy1=k0;
    y1=y0+fy1*h;
    k1=k0+fk1*h;
    k11=k1;
    y0=y1;   k0=k1;
    x0=x(i)+h;
    
end
e=((k11-k0)/k0)*100;
end
e 
k11