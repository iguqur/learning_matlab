% ���������ĵ���
syms x
y=sym('y(x)')
F=exp(y)+x*y-exp(1)
dFdx=diff(F, x) % �ȶԺ�����
[r,s]=subexpr(dFdx, s) % �ù����ӱ��ʽ��д���ű��ʽ
dydx=solve(r, 's') % s����dydx����s�ӷ�������������͵õ���dydx