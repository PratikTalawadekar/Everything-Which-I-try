class List1
{
Node head;

static class Node
{
int data;
Node next;
Node(int d)
{
data = d;
next = null;
}
}

public void display()
{
	Node n = head;
	while(n != null)
	{
		System.out.println(n.data+ "---->");
		n=n.next;
		//n=next! =null;
	}
	System.out.println("#");
}

public static void main(String[] args)
{
List1 l1 = new List1();

l1.head = new Node(11);
Node second = new Node(22);
Node third = new Node(44);
Node forth = new Node(55);

l1.head.next = second;
second.next = third;
third.next = forth;
//forth.next = null;

l1.display();
}
}