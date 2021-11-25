%% lagging method
clear all;clc;
Dx=0.2; % aralýk deðeri yada artýþ miktarý
x=0:Dx:1;
m=length(x);
y0=0;
for i=2:m
    A(1)=((x(1)/5)-1);
    Y(1,1)=-4;
    Y(1,2)=(2+A(1)*Dx*y0);
    B(1)=-2*x(1)^2*Dx^2+2*y0;
    Y(i,i+1)=2;
    Y(i,i-1)=2;
    Y(i,i)=-4;
    B(i)=-2*x(i)^2*Dx^2;
end 
Y
B=B';
%% TDMA solutýon 
A=Y;
A
[m,n]=size(A);
X=zeros(m,1);
A(1,2)=A(1,2)./A(1,1);
B(1)=B(1)./A(1,1);
for i=2:m-1;
    div=A(i,i)-A(i,i-1).*A(i-1,i);
    A(i,i+1)=A(i,i+1)./div;
    B(i)=(B(i)-A(i,i-1).*B(i-1))./div;
end
A
B
i=m;
  X(m)=(B(i)-A(i,i-1).*B(i-1))./(A(i,i)-A(i,i-1).*A(i-1,i));
  for i=m-1:-1:1;
      X(i)=B(i)-A(i,i+1).*X(i+1);
  end
  X