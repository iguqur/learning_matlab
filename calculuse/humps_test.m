syms x
y=1/((x-0.3)^2+0.01)+1/((x-0.9)^2+0.04)-6
dydx=diff(y)
x=arrayfun(@(x0)fzero(inline(dydx), x0), [0.3, 0.6, 1])
fplot(@humps, [0,2])
hold on
plot([x-0.1; x+0.1], [subs(y, x); subs(y,x)], 'k--')