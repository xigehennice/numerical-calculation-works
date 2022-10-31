function [t,x]=R_K4(fun,tb,te,x0,N)
%fun 微分方程
%tb t的取值范围的左端点
%te t的取值范围的左端点
%y0 y的迭代初始值
%N 步长
% 如果函数的输入参数没有N时，步长数N取默认值200
% if nargin<4
% N = 200;
h = (te-tb)/N;%步长
%
t = tb+[0:N]'*h;

x = zeros(size(t));

x(1) = x0;

    for k=1:N

        K1 = feval(fun,t(k),x(k));

        K2 = feval(fun,t(k)+h/2,x(k)+K1*h/2);

        K3 = feval(fun,t(k)+h/2,x(k)+K2*h/2);

        K4 = feval(fun,t(k)+h,x(k)+h*K3);

        x(k+1) = x(k) + (K1+2*K2+2*K3+K4)*h/6;
    end
end
 
