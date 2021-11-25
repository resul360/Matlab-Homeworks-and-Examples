function Exercise_5_17
clc
R=1.0e5;k=200;
options=optimset('display','iter');
if k==0
    fzero(@Fonk_5_17_1,0.03,options,R)
else
    fzero(@Fonk_5_17_2,0.03,options,R,k)
end

function z=Fonk_5_17_1(L,R)
z=(2*log10(R*sqrt(L)/2.51))^(-2)-L;

function z=Fonk_5_17_2(L,R,dk)
z=(-2*log10(2.51/R/sqrt(L)+0.27/dk))^(-2)-L;