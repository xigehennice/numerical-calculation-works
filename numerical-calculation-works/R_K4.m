function [x,y]=R_K4(fun,xb,xe,y0,N)
%fun ΢�ַ���
%tb t��ȡֵ��Χ����˵�
%te t��ȡֵ��Χ����˵�
%y0 y�ĵ�����ʼֵ
%N ����
% ����������������û��Nʱ��������NȡĬ��ֵ200
% if nargin<4
% N = 200;
h = (xe-xb)/N;%����

x = xb+[0:N]'*h;

y = zeros(size(x));

y(1) = y0;

    for k=1:N

        K1 = feval(fun,x(k),y(k));

        K2 = feval(fun,x(k)+h/2,y(k)+h/2*K1);

        K3 = feval(fun,x(k)+h/2,y(k)+h/2*K2);

        K4 = feval(fun,x(k),y(k)+h*K3);

        y(k+1) = y(k) + h/6*(K1+2*K2+2*K3+K4);
    end
end
 
