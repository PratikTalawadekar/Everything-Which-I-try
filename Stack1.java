class Stack1
{
	private int max;
	private long[] S1;
	private int top;
	
	public Stack1(int s)
	{
		top=-1;
		max=s;
		S1 = new long[max];
	}
	
	public void push(long x)
	{
		S1[++top] = x;
	}
	
	public long pop()
	{
		return S1[top--];
	}
		
	long peek()
	{
		return S1[top];
	}	
	
	boolean isEmpty()
	{
		return(top == -1);
	}
	
	boolean isFull()
	{
		return(top > (max-1));
	}
	

public void display()
{
for(int i=0;i<=top;i++)
System.out.println(S1[i]);
}
	}	
		
	class StackApp
		{
		public static void main(String[] args)
		{
				Stack1 s = new Stack1(5);
				s.push(11);
				s.push(22);
				s.push(33);
				s.display();
				s.pop();
				s.display();
				s.push(55);
				s.push(3);
				s.display();
}
		}