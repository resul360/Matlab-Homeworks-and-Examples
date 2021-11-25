clc
clear
t0=1e-8;x=1.5;i=1;toll=10;n=0;

while toll>t0
    xs=x-(cos(x)-sin(x))/(-sin(x)+cos(x))
    toll=(xs-x)/xs*100;
    
    i=i+1;x=xs;
end
 xs, i

