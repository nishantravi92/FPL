#include<stdio.h>
int expression(void);
int expression1(void);
int expression2(void);
int i=0,j=0,k=0;
int main()
{
	int sum=0;
	for(i=0;i<=4;i++)
		sum+=expression();
	printf("%d",sum);
}

int expression(void)
{
	return i*expression1();
}

int expression1(void)
{
	int sum1=0;
	for(j=0;j<=4;j++)
		sum1 += (i+j)*expression2();
	j=0;
	return sum1;
} 

int expression2(void)
{
	int sum2 = 0;
	for(k=0;k<=4;k++)
		sum2+= (j*k-i);
	return sum2;
}
