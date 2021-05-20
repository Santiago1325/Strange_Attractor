function xp = Rossler(t,x,a,b,c)
    xp(1) = -x(2)-x(3);
    xp(2) = x(1) + a*x(2);
    xp(3) = b + x(3)*(x(1) - c);
    xp = xp';
end