class Fibonacci
{

	Fibonacci() {};

	public int fib_r(int r) {  // 5
		if (r == 1) return 1;
		if (r == 0) return 1; 
		return fib_r(r-1)+fib_r(r-2);
	}
	public int fib_i(int r) {

		int a, b, i;
 		a = 1; b = 1; 
		for (i = 2; i <= r; i++)
 		{ 
			int n = a+b; 
			a = b;
 			b = n;
		}
	        return b;
	}

public static void main(String[] args) { 
	Fibonacci f = new Fibonacci();
	 int n = Integer.parseInt(args[0]); 
	System.out.println(n); 
	System.out.println("Recursion " + f.fib_r(n)); 
	System.out.println("Interation " + f.fib_i(n));
	
}

}