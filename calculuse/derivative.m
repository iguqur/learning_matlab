% 求导数示例
syms x
f=exp(-x)*sin(x^2)
df=diff(f) % 求一阶导数
d2f=diff(f, 2) % 求二阶导数
fplot(df, [0,5])
hold on
fplot(d2f, [0, 5], 'k:')
legend('df(x)dx', 'd^2f(x)/dx^2')
