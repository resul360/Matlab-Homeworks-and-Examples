clc,clear all;
R = 1.0; Q = 1.0; alpha = 8.0*pi/180;
ksioff = -0.093*R; etaoff = 0.08*R; zetaoff = complex(ksioff, etaoff);
nksi = 800; ksimin = -3.5*R; ksimax = 2.5*R;
neta = 800; etamin = -2.5*R; etamax = 2.5*R;
[ksi, eta] = meshgrid(linspace(ksimin, ksimax, nksi),linspace(etamin, etamax, neta));
zeta = complex(ksi, eta);
figure(1) % Flow over cylinder
thetaTE = -asin(etaoff/R);
Gamma = 4*pi*Q*R*sin(alpha-thetaTE);
F = Q*exp(-1i*alpha)*(zeta-zetaoff)+ Q*exp(1i*alpha)*R^2./(zeta-zetaoff)+ ...
1i*Gamma/(2*pi).*log((zeta-zetaoff)/R);
StreamFunction = imag(F);
zetapt = complex(R+ksioff, etaoff);
Fpt = Q*exp(-1i*alpha)*(zetapt-zetaoff)+Q*exp(1i*alpha)*R^2./...
(zetapt-zetaoff)+1i*Gamma/(2*pi).*log((zetapt-zetaoff)/R);
StreamFunctionpt = imag(Fpt);
rad = sqrt((ksi-ksioff).^2+(eta-etaoff).^2);
indx = find(rad<=R);
StreamFunction(indx) = StreamFunctionpt;
levmin = StreamFunction(1,nksi);
levmax = StreamFunction(neta,1);
levels = linspace(levmin, levmax, 50);
contour(ksi, eta, StreamFunction, levels)
axis equal
grid
axis([ksimin, ksimax, etamin, etamax])
xlabel('\xi')
ylabel('i\eta')
hold on
theta = linspace(0, 2*pi, 1000);
zetac = R*exp(1i*theta)+zetaoff;
plot(zetac, 'k-')
hold on
ksiTE = ksioff + sqrt(R^2-etaoff^2);
ksiLE = ksioff - sqrt(R^2-etaoff^2);
plot(ksiTE, 0 ,'or')
plot(ksiLE, 0, 'sr')
text(ksiTE-0.35*R, 0, 'TE')
text(ksiLE+0.2*R,0, 'LE')
figure(2) %Joukowski airfo
lambda = ksioff + sqrt(R^2-etaoff^2);
zeta = complex(ksi, eta);
z = zeta + lambda^2./zeta;
x = real(z);
y = imag(z);
contour(x, y, StreamFunction, levels)
axis equal
axis([ksimin, ksimax, etamin, etamax])
xlabel('x')
ylabel('iy')
hold on
zair = zetac+lambda^2./zetac;
xair = real(zair);
plot(zair, 'k')
zetaTE = complex(ksiTE, 0);
zetaLE = complex(ksiLE, 0);
zTE = zetaTE+lambda^2/zetaTE;
zLE = zetaLE+lambda^2/zetaLE;
plot(zTE, 0, 'or')
plot(zLE, 0, 'sr')
figure(3) % Pressure field around airfoil
w = (Q*exp(-1i*alpha)-Q*exp(1i*alpha)*R^2./(zeta-zetaoff).^2+...
1i*Gamma/(2*pi)./(zeta-zetaoff))./(1.0-lambda^2./zeta.^2);
Cp = 1.0-w.*conj(w)/Q^2;
Cp(indx) = 0.0;
levels = linspace(-10, 1, 150);
contour(x, y, Cp, levels)
hold on
zair = zetac+lambda^2./zetac;
xair = real(zair);
plot(zair, 'k-')
axis equal
axis([ksimin, ksimax, etamin, etamax])
xlabel('x')
ylabel('iy')
