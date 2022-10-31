
#include<stdio.h>
#include<math.h>
#define pi 3.1415926

double f(double x, double xk) {//被积函数,区间变换
	double t ;
    t = xk / 2 + (xk / 2) * x;
	printf("t =%lf\n", t);
	double f = sqrt(1 / (2 * pi)) * exp(-pow(t, 2) / 2) * xk / 2;
	return f;
}
double gausslerangde(double x1, double x2, double x3, double xk) {
	double g1 = f(x1, xk);
	double g2 = f(x2, xk);
	double g3 = f(x3, xk);
	double g=5.0 / 9 * g1 + 8.0 / 9 * g2 + 5.0/ 9 * g3;
	return g;

}
//  y的函数
double funY(double x1, double x2, double x3, double xk) {
	return gausslerangde(x1, x2, x3, xk) - 0.45;
}
//y的一阶导数
double funY1(double xk) {
	return sqrt(1 / (2 * pi)) * exp(-pow(xk, 2) / 2);
}
int main()
{
	double TOL = 0.000005;
	double xk, xk1, x1, x2, x3;
	x1 = -sqrt(15) / 5;
	x2 = 0;
	x3 = sqrt(15) / 5;
	xk = 0.5;//求1.5附近的根
	xk1 = xk - funY(x1, x2, x3, xk) / funY1(xk);
	while (fabs(xk1 - xk) > TOL) {
		xk = xk1;
		xk1 = xk - funY(x1, x2, x3, xk) / funY1(xk);
		printf("funy =%lf\n", funY(x1, x2, x3, xk));
		printf("xk=%lf\n", xk1);
		printf("gauss=%lf\n", gausslerangde(x1, x2, x3, xk));
	}

	return 0;
}
	
	
	
	