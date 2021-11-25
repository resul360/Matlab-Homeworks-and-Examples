
clc
clear all
xi=0.1;
tau=linspace(0,20,200);
ftau=DampedSineWave(tau,xi);
Area=trapz(tau,ftau)
PositiveArea=trapz(tau,ftau.*(ftau>=0))
NegativeArea=trapz(tau,ftau.*(ftau<0))
NetArea=PositiveArea+NegativeArea