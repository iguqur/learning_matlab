% 一次贝塞尔
% t = 0.1:0.1:1.0
% p0 = [10 0]
% p1 = [0 10]
% syms a b
% bt = (1-t)*a + t*b
% x = subs(bt, [a, b], [p0(1), p1(1)])
% y = subs(bt, [a, b], [p0(2), p1(2)])
% plot(x, y)

% 三次贝塞尔
t = 0:0.01:1.0
p0 = [10 0]
p1 = [3 2]
p2 = [8 8]
p3 = [0 10]
syms p_0 p_1 p_2 p_3
bt = p_0 * power((1-t),3) + 3*p_1*t.*power((1-t),2) + 3*p_2*power(t,2).*(1-t) + p_3*power(t,3);
x = subs(bt, [p_0, p_1, p_2, p_3], [p0(1), p1(1), p2(1), p3(1)])
y = subs(bt, [p_0, p_1, p_2, p_3], [p0(2), p1(2), p2(2), p3(2)])
plot(x, y)