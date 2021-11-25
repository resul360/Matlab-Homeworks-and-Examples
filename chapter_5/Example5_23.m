function Example5_23
options = optimset('display', 'off');
z = fsolve(@kinematics,[pi/6 pi/6], options, 1, 2, 1.8, 2.1)*180/pi;
for k = 1:length(z)
disp(['Theta(' num2str(k,1) ') = ' num2str(z(k)) ' degrees'])
end
function w = kinematics(theta, a1, a2, r1, r2)
w = [a1*cos(theta(1))+a2*cos(theta(1)+theta(2))-r1;...
    a1*sin(theta(1))+a2*sin(theta(1)+theta(2))-r2];