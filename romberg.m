function [] = romberg(f,a,b,e)
k=0; % ��������
n=1; % ���仮�ָ���
h=b-a;
T=double(h/2*(f(a)+f(b)));%���ι�ʽ���T(1,1)
err=b-a;
while err>=e
    k=k+1;
    h=h/2;
    tmp=0;
    for i=1:n
        tmp=tmp+f(a+(2*i-1)*h);
    end
    T(k+1,1)=double(T(k)/2+h*tmp);%�������Ԫ
    for j=1:k
        T(k+1,j+1)=double(T(k+1,j))+double((T(k+1,j)-T(k,j))/(4^j-1));%�����㷨
    end
    n=n*2;
    err=abs(T(k+1,k+1)-T(k,k));%���Ϊ�ôε�������Ԫ����һ�ε�����Ԫ�Ĳ�
end
disp(T);
  