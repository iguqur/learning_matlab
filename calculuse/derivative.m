% ����ʾ��
syms x
f=exp(-x)*sin(x^2)
df=diff(f) % ��һ�׵���
d2f=diff(f, 2) % ����׵���
fplot(df, [0,5])
hold on
fplot(d2f, [0, 5], 'k:')
legend('df(x)dx', 'd^2f(x)/dx^2')
