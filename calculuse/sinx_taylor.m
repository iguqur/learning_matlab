syms x
y=sin(x)
for k=6:2:22
    r= taylor(y, x, 'Order', k)
    fplot(eval(['@(x)', char(r)]), [-6, 6])
    hold all
end
axis([-6, 6, -1.5, 1.5])

% taylortool 泰勒展开级数界面
