function [x,y]=R_K4(fun,xb,xe,y0,N)
%fun 微分方程
%tb t的取值范围的左端点
%te t的取值范围的左端点
%y0 y的迭代初始值
%N 步长
% 如果函数的输入参数没有N时，步长数N取默认值200
% if nargin<4
% N = 200;
h = (xe-xb)/N;%步长

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
 
