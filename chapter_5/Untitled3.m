fgsolve = inline('[0.25*xy(1).^2+xy(2).^2-1; xy(2)-4*xy(1).^2+3]', 'xy');
options = optimset('display', 'off');
xy = fsolve(fgsolve, [0.5, -0.5], options)