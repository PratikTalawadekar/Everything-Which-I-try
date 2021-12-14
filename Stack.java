// Stack
class Stack
{
	static final int MAX = 5;
	int top;
	int a1[] = new int[MAX];
	
	Stack()
	{
	top=-1;
	}
	//Check if Stack is Empty[isEmpty]
	boolean isEmpty()
	{
		return(top < 0);
	}
	
// Check if Stack is Full[isFull]
boolean isFull()
{
return(top > (MAX-1));
System.out.println(" ");	
}

// Insert [PUSH]
boolean push(int x);
{
	if(top >= MAX-1)
	{
		System.out.println("Overflow !!");
	return false;
	}
	else
	{
		a1[++top] = x;
	//top =top+1;
	//a1[top] = x;
	System.out.println("Push :"+x);
	return true;
}
}

//Delete [POP]
int pop()
{
	if(top < 0)
	{
		System.out.println("Underflow !!");
		return 0;
	}
	else
	{
		int x = a[top--];
		//top=top-1;
		return x;
	}
}
	
	public static void main (String[] args)
		{
			Stack s1 = new Stack();
			s1.push(10);
			s1.push(110);
			s1.push(1110);
			s1.push(11110);
			s1.push(111110);
			System.out.println("Pop : "+s1.pop());
			
}
}