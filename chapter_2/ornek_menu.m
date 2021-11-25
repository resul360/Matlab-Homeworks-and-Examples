clc
clear all

ay=input('ay no gir (1-12)=')

switch (ay)
    case {1,3,5,7,8,10,12}
        disp('bu ay 31')
    case {4,6,9,11}
        
disp('bu ay 30')
    otherwise
        disp('bu ay 28')
end
    