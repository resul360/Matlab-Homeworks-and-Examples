clc
clear all
NN=1:2:305;XX=linspace(0,2,5);  %NN(1x153)  XX(1x5)
[x,n]=meshgrid(XX,NN);  % x(153x5) n(153x5)
s_exact=sech(XX); % s_exact(1x153)
s=4*pi*sum(n.*(-1).^((n-1)/2)./((n*pi).^2+4*x.^2)) % s(153x5)
z=100*(s-s_exact)./s_exact % (1x5)
compare=[s' s_exact' z'] %(5x3)