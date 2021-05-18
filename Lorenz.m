function xp = Lorenz(t,x,a,b,c)
    xp(1) = a*(x(2)-x(1));
    xp(2) = x(1) * (b-x(3))-x(2);
    xp(3) = x(1)*x(2)-c*x(3);
    xp = xp';
end