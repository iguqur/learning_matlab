y=@(x)5*sqrt(400+x^2)+3*(100-x)
[x, fval]=fminbnd(y, 0, 100)