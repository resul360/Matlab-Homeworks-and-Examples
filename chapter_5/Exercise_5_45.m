function Exercise_5_45
clc,clear all;
format long
k=1.4;
[p_max f_max]=fminbnd(@adiabatic,0,1,[],k);
pep0_max=(2/(k+1))^(k/(k-1));
f_exact=feval(@adiabatic,pep0_max,k);

p=linspace(0,1,200);
f=feval(@adiabatic,p,k);
[a b]=min(f);

plot(p,f)
cc=[-f_max,-a,-f_exact]
grid on
hold on
plot(p_max,f_max,'r*')

function psi=adiabatic(pep0,k)
psi=-sqrt(k/(k-1))*sqrt((pep0).^(2/k)-(pep0).^((k+1)/k));


