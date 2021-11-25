% clc
% clear all
% a=-1;b=2;
% x=[-4,-1,1,4];
% r=(a<=x)
% p=(x<b)
% logi=(r&p)
% exp(x/2).*logi

%****************************************
% clc
% clear all
% a=[4 5 6 7 8];
% if a>1
%     disp('A')
% end
% if a>2
%     disp('AA')
% end
% if a>3
%     disp('AAA')
% end
% if a>4
%     disp('AAAA')
% else
%     disp('null')
% end
% 
% %****************************************
% % Example 4.3
% 
% % clc;clear all
% N=input('5`ten büyük bir tamsayý giriniz:');
% A=zeros(N,N);
% for r=1:N
%     A(r,:)=((r-1)*N+1:r*N);
% end
% disp(A)

%*****************************************

% Example 4.8

clc;clear all
a=4;g=[4,4,7,10,-6,42,1,0];k=0;
indx=[];
for n=1:length(g)
if g(n)>a
k=k+1;
indx(k)=n;
end
 end
 disp(indx)

%*****************************************

% Example 4.14

clc
clear all
xo = 1/sqrt(2); yo = 1/2; n = 0;
while abs(1/pi - yo) > 1e-15
xo=(1-sqrt(1-xo^2))/(1+sqrt(1-xo^2));
yo = yo*(1+xo)^2-2^(n+1)*xo;
n = n+1;
end
fprintf(1, 'For n = %2.f, |1/pi-y_(n+1)| = %5.4e\n', n, abs(1/pi - yo))
%*****************************************

% Example 4.14 for döngüsü
% clc
% clear all
% format long
% x(1)=1/sqrt(2);y(1)=1/2;n=9;
% 
%     for i=1:n
%         x(i+1)=(1-sqrt(1-x(i)^2))/(1+sqrt(1-x(i)^2))
%         y(i+1)=y(i)*(1+x(i+1))^2-2^(i)*x(i+1)
%       
%     end
%     1./y
%     pi
%     abs(1/pi-y(5))
