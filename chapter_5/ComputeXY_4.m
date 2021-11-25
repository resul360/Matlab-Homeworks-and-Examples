function[x y]=ComputeXY_4(t,w)


x = cos(w(1)*t) + w(2); 
y = [x abs(x) + w(3)]; 