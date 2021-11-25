
clc
clear all
suma = inline('sum(1./([1:1000].^2-a))', 'a');
fofa=fzero(suma, pi/2)
 fprintf('The value of a is=%f' ,fofa)
