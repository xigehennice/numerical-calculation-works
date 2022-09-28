function y = Newton(x0,y0,x)
n = length(x0);
A = zeros(n);
A (:,1) =y0';
%���ɾ����
for j =2:n %�б�ѭ��
    for i = j:n %�б�ѭ��
            A(i,j) = (A(i,j-1)-A(i-1,j-1))/(x0(i)-x0(i-j+1));%��������
    end
end
y = 0;
for j = 2:n
    T=1;
    for i = 1:j-1
        T=T.*(x-x0(i));
    end
   
    y = y+A(j,j).*T;
end
y = A(1,1)+y;
end
