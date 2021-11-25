
clc
clear all
% Bessel fonksiyonlarý: j ve y 
% Deðiþtirilmiþ bessel fonksiyonlarý: i ve k

x0=linspace(0,20,200);
subplot(2,2,1)
plot(x0,besselj(0,x0),x0,0,'r-')% besselj(0,x0)0. mertebeden 1. çeþit bessel fonk
grid on
xlabel('x');
ylabel('J0');


subplot(2,2,2)
plot(x0,besselj(1,x0),x0,0,'r-')% besselj(1,x0)1. mertebeden 1. çeþit bessel fonk
grid on

subplot(2,2,3)
plot(x0,bessely(0,x0))% bessely(0,x0)0. mertebeden 2. çeþit bessel fonk
hold on
plot([0,20],[0,0],'g-')
grid on

subplot(2,2,4)
plot(x0,bessely(1,x0),x0,0,'r-')% bessely(0,x0)1. mertebeden 2. çeþit bessel fonk
grid on





figure
x0=linspace(0,1,200);
subplot(2,2,1)
plot(x0,besseli(0,x0))% besseli(0,x0)0. mertebeden 1. çeþit deðiþtirilmiþ bessel fonk
subplot(2,2,2)
plot(x0,besseli(1,x0))% besseli(0,x0)1. mertebeden 1. çeþit deðiþtirilmiþ bessel fonk
subplot(2,2,3)
plot(x0,besselk(0,x0))% besselk(0,x0)0. mertebeden 2. çeþit deðiþtirilmiþ bessel fonk
subplot(2,2,4)
plot(x0,besselk(1,x0))% besselk(0,x0)1. mertebeden 2. çeþit deðiþtirilmiþ bessel fonk

% besselj(3:5,(0:.2:10)')

b= inline('bessely(n, x) ', 'x', 'n')
a = fzero(b,10,[],1)

B = @(x, n) (besselj(n, x));
a = fzero(B,9,[],1)