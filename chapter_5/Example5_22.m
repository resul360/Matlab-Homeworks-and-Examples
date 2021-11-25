function Example5_22
z = 0.1; tzo = 15;
MMin = @(tau, z, tzo) (-yt(tau, z, tzo));
[tm, ym] = fminbnd(MMin, 15 , 20, [], z, tzo);
disp(['y_max = ' num2str(-ym, 4) ' at tau = ' num2str(tm, 4)])
function a = yt(tau, z, tzo)
a = ht(tau, z, tzo)-ht(tau-tzo, z, tzo).*(tau-tzo>0);
function out = ht(tau, z, tzo)
r = sqrt(1-z^2);
out= (-2*z+tau+exp(-z*tau).*( 2*z*cos(tau*r)+(2*z^2-1)/r*sin(tau*r) ))/tzo;