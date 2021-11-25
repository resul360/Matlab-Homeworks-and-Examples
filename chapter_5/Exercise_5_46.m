function Exercise_5_46
clc,clear all;
options=optimset('display','on')
a=fsolve(@fonk,[0.5,0.5,0.5],options)


function f=fonk(z)
f=[sin(z(1))+z(2)^2+log(z(3))-7;3*z(1)+2^z(2)-z(3)^3+1;...
    z(1)+z(2)+z(3)-5];



