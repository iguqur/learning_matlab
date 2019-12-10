t = 0:0.01:1.0
p0 = [10 0]
p1 = [5 0]
p2 = [0 5]
p3 = [0 10]
syms p_0 p_1 p_2 p_3
b3t = p_0 * power((1-t),3) + 3*p_1*t.*power((1-t),2) + 3*p_2*power(t,2).*(1-t) + p_3*power(t,3);
x = subs(b3t, [p_0, p_1, p_2, p_3], [p0(1), p1(1), p2(1), p3(1)])
y = subs(b3t, [p_0, p_1, p_2, p_3], [p0(2), p1(2), p2(2), p3(2)])
plot(x, y)