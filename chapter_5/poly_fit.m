clc
x=0:10;y=[1,3,6,8,11,14,15,16,18,22,25];
c=polyfit(x,y,10)
plot(x,y,'r*',x,polyval(c,x),'g-')