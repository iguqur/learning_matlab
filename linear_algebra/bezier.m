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
p1 = [5 0]
p2 = [0 5]
p3 = [0 10]
syms p_0 p_1 p_2 p_3
b3t = p_0 * power((1-t),3) + 3*p_1*t.*power((1-t),2) + 3*p_2*power(t,2).*(1-t) + p_3*power(t,3);
x = subs(b3t, [p_0, p_1, p_2, p_3], [p0(1), p1(1), p2(1), p3(1)])
y = subs(b3t, [p_0, p_1, p_2, p_3], [p0(2), p1(2), p2(2), p3(2)])
plot(x, y)

%贝塞尔回归
hold on
syms a b
t1 = 0.5 % 假定贝塞尔点停在了t=0.3的位置
c = (1-t1)*a + t1*b
p2x = subs(c, [a, b], [p2(1), p3(1)])
p2y = subs(c, [a, b], [p2(2), p3(2)])

p12x = subs(c, [a, b], [p1(1), p2(1)]) % p1 p2的中间点
p12y = subs(c, [a, b], [p1(2), p2(2)]) 
p1x = subs(c, [a, b], [p12x, p2x])
p1y = subs(c, [a, b], [p12y, p2y]) 

p01x = subs(c, [a, b], [p0(1), p1(1)])
p01y = subs(c, [a, b], [p0(2), p1(2)])
p012x = subs(c, [a, b], [p01x, p12x])
p012y = subs(c, [a, b], [p01y, p12y])
p0x = subs(c, [a, b], [p012x, p1x])
p0y = subs(c, [a, b], [p012y, p1y])
  
x = subs(b3t, [p_0, p_1, p_2, p_3], [p0x, p1x, p2x, p3(1)])
y = subs(b3t, [p_0, p_1, p_2, p_3], [p0y, p1y, p2y, p3(2)])
plot(x, y)


% t = 0:0.01:1
% p0 = [0 0]
% p1 = [50 10]
% p2 = [100 0]
% syms p_0 p_1 p_2 
% b2t = p_0 * power((1-t),2) + 2*p_1*(1-t).*t + p_2*power(t,2);
% x = subs(b2t, [p_0, p_1, p_2], [p0(1), p1(1), p2(1)])
% y = subs(b2t, [p_0, p_1, p_2], [p0(2), p1(2), p2(2)])
% plot(x, y)
% hold on
% 
% p0 = [50 5]
% p1 = [75 5]
% p2 = [100 0]
% x = subs(b2t, [p_0, p_1, p_2], [p0(1), p1(1), p2(1)])
% y = subs(b2t, [p_0, p_1, p_2], [p0(2), p1(2), p2(2)])
% plot(x, y)