% 求隐函数的导数
syms x
y=sym('y(x)')
F=exp(y)+x*y-exp(1)
dFdx=diff(F, x) % 先对函数求导
[r,s]=subexpr(dFdx, s) % 用公共子表达式重写符号表达式
dydx=solve(r, 's') % s就是dydx，将s从方程中提起出来就得到了dydx