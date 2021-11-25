function [H, T] = FOm(Om, z)
T = atan2(2*z*Om, 1-Om.^2)*180/pi;
H = 1./sqrt((1-Om.^2).^2+(2*z*Om).^2);