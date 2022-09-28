w =[0.017 0.020 0.025 0.085 0.087 0.119 0.171 0.174 0.210 0.211 0.233 0.783 0.999 1.11 1.29 1.32 1.35 1.69 1.74 2.75 3.02 3.04 3.34 4.09 4.28 4.29 4.58 4.68 4.83 5.30 5.45 5.48 5.53 5.96];
R =[0.154 0.181 0.234 0.260 0.296 0.299 0.334 0.363 0.428 0.366 0.537 1.47 0.771 0.531 0.87 1.15 2.48 1.44 2.23 1.84 2.01 3.59 2.83 3.58 3.28 3.40 2.96 5.10 4.66 3.88 3.52 4.15 6.94 2.40] ;

y = log(R);
x= log(w); 
f = polyfit(x,y,2);
c = f(1);
a = f(2);
b = exp(f(3));
Y = c*x.^2+a*x+log(b);
plot(x,Y);
hold on;
scatter(x,y);
n = length(x);
%ƽ�����ļ���
delt = 0;
for i=1:n
    e = (Y(i)-y(i))*(Y(i)-y(i));
    delt = delt+e;
end