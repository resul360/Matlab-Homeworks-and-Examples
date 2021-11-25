function[z]=ComputeXY_3(t,w)


x = cos(w(1)*t) + w(2); 
z = [x abs(x) + w(3)]; 