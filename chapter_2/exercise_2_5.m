clc
clear all

z=magic(5);
z1=z;
z(:,2)=z(:,2)/sqrt(3);
z(5,:)=z(5,:)+z(3,:);
z(:,1)=z(:,1).*z(:,4);
double(z)
q=z-diag(diag(z))+2*eye(5)
Q=diag(q*q')
Maxq=max(max(q)),Minq=min(min(q))