class Recursion1
{
static int fact(int n) // 5 , 4 , 3 , 2 , 1
{
if(n<=1)
return 1;
else
return n*fact(n-1);
}

public static void main(String[] args)
{
System.out.println(fact(5));
}
}

/*  fact(5) = 5*fact(4)
			= 5*4*fact(3)
			= 5*4*3*fact(2)
			= 5*4*3*2*fact(1)
			= 5*4*3*2*1
			= 120
			*/