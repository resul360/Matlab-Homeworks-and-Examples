clc
clear all


z=[0 -0.2 0.4 -0.6 0.8 -1 -1.2 -1.4 1.6]
A=z(find(z<0))

Amax=max(A)
Amin=min(A)

B=z(find(z>0))
B.^0.5
