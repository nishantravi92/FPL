#include<stdio.h>
typedef int expression(void);
int sigma(int *,int, int, expression *);
int expression1(void);
int expression2(void);
int expression3(void);
int i=0,j=0,k=0;
int main()
{
	printf("%d",sigma(&i,0,4, expression1));
}

int sigma(int *k, int low, int high, int expr())
{
	int sum = 0;
	for (*k=low; *k<=high; (*k)++)
 		sum = sum + expr();
 	return sum;
}

int expression1(void)
{
	return i* sigma(&j,0,4,expression2);
}

int expression2(void)
{
	return (i+j)*sigma(&k,0,4,expression3);
}

int expression3(void)
{
	return j*k-i;
}
