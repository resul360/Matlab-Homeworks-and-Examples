clc;clear all
%3*X1-cos(x2*x3)-(-1/2)=0  1. fonksiyon
%x1^2-81*(x2+0.1)^2+sin(x3)+1.06=0 2. fonksiyon
%exp(-x1*x2)+20*x3+((10*pi-3)/3)=0  3. fonksiyon
f1=sym('x1');
f2=sym('x2');
f3=sym('x3');
F=[3*f1-cos(f2*f3)-(-1/2);f1.^2-81*(f2+0.1).^2+sin(f3)+1.06;exp(-f1*f2)+20*f3+((10*pi-3)/3)]
m=length(F);
for i=1:m;
    A(i,1)=diff(F(i),f1);
  
     A(i,2)=diff(F(i),f2);
     A(i,3)=diff(F(i),f3);
     
end
% A=[diff(F(1),f1) diff(F(1),f2) diff(F(1),f3);diff(F(2),f1) diff(F(2),f2) diff(F(2),f3);diff(F(3),f1) diff(F(3),f2) diff(F(3),f3)]
x1=sym(0.1); x2=sym(0.1);x3=sym(-0.1);
A1=[3,x3*sin(x2*x3), x2*sin(x2*x3); 2*x1, - 162*x2 - 81/5,cos(x3);-x2*exp(-x1*x2), -x1*exp(-x1*x2),20];
% xi1=x1; xi2=x2;xi3=x3; 
double (A1)
%baþlangýç deðerleri
x1=0.1; x2=0.1;x3=-0.1; 
xi1=x1; xi2=x2;xi3=x3; % deðerleri bir baþka deðiþkene tanýmlama yaparak hata hesaplanacaktýr.
pretty(A) % matrisi daha düzgün gösterir.
k=0; % iterasyon sayýsý
epsilon=1;
f1=sym(x1);
f2=sym(x2);
f3=sym(x3);
F=[3*f1-cos(f2*f3)-(-1/2);f1.^2-81*(f2+0.1).^2+sin(f3)+1.06;exp(-f1*f2)+20*f3+((10*pi-3)/3)]
B=double(F)
while epsilon >0.00001
    xi1=x1; xi2=x2;xi3=x3;



end

