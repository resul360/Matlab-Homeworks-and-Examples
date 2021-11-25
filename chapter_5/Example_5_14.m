function Example_5_14
y0 = [0, 0, 0.68, 1, -0.50];
Pr = 0.7;
[eta ff] = ode45(@NaturalConv, [0 5], y0, [], Pr);
%plot(eta,ff(:,1),eta,ff(:,2),'r')
for i=1:1:length(y0)
    plot(eta,ff(:,i))
    hold on
end
eta
length(eta)


function ff = NaturalConv(x, y, Pr)
ff = [y(2); y(3); -3*y(1)*y(3)+2*y(2)^2-y(4); y(5); -3*Pr*y(1)*y(5)];
%The results from the execution of this program are shown in Figure 12.15