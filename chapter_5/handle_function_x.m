clc
bet=pi/3;a=4.1;
cx=@ (x)(abs(cos(bet*x)));
cx1=@ (x,bet)(abs(cos(bet*x)));
disp( 'cx=' , cx1(4.1,pi/3));
disp(cx(4.1));

% v=@(x,y) ([0.25*x.^2+y.^2-1;y-4*x.^2+3]);
% a=v(1,2)
