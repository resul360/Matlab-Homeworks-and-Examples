
clc
clear all
% Atop = inline('x+2', 'x');
% Abot = inline('x.^2', 'x');
% Area = quadl(Atop, -1, 2)-quadl(Abot, -1, 2)
% Mxc = inline('x.*((x+2)-x.^2)', 'x');
% Myc= inline('((x+2).^2-x.^4)/2', 'x');
% xc = quadl(Mxc, -1, 2)/Area
% yc = quadl(Myc, -1, 2)/Area

Atop =@(x)(x+2);
Abot = @(x)(x.^2);
Area = quadl(Atop, -1, 2)-quadl(Abot, -1, 2)
Mxc =@(x) (x.*((x+2)-x.^2));
Myc= @(x)(((x+2).^2-x.^4)/2);
xc = quadl(Mxc, -1, 2)/Area
yc = quadl(Myc, -1, 2)/Area

