function y = lagrange(x0,y0,x)
n = length(x0);
l = ones(1,n);%基函数初始化
for i = 1:n
    for j = 1:n
        if j~=i
            l(i)=l(i).*(x-x0(j))./(x0(i)-x0(j));%基函数迭代
        end
    end
end
y = sum(y0.*l);
end



%m= length(x);
%for i = 1:n
%    l(i) = 1;
%end
 %   for i = 1:m
  %      for j = 1:n
    %        for k = 1:n
     %           if j ==k
      %              continue;
       %         end
        %    l(j) =l(j)* ( x(i) -x0(k)/( x0(j) - x0(k) );
         %   end
        %end
    %end
%y = 0;
%for i = 1:n
 %   y = y0(i) * l(i) + y;
%end


