class BT
{
Node root;
static class Node
{
int data;
Node left, right;

Node(int d)
{
data = d;
left = right = null;
}
}

BT(int d)
{
root = new Node(d);
}

void preorder(Node n)	//ROOT,LC,RC
{
	if(n == null)
		return;
	System.out.println(n.data);
	preorder(n.left);
	preorder(n.right);
}

void inorder(Node n)	//LC,ROOT,RC
{
	if(n == null)
		return;
	
	inorder(n.left);
	System.out.println(n.data);
	inorder(n.right);
}

void postorder(Node n)	//LC,RC,ROOT
{
	if(n == null)
		return;
	
	postorder(n.left);
	postorder(n.right);
	System.out.println(n.data);	
}

void inorder()
{
	inorder(root);
}

void preorder()
{
	preorder(root);
}

void postorder()
{
	postorder(root);
}

public static void main(String[] PRT)
{
	BT b1 = new BT(11);
	b1.root = new Node(11);
	b1.root.left = new Node(22);
	b1.root.right = new Node(33);
	b1.root.left.left = new Node(44);
	b1.root.left.right = new Node(55);
	b1.root.right.left = new Node(66);
	b1.root.right.right = new Node(77);
	
	System.out.println("Preorder");
	b1.preorder();

	System.out.println("Postorder");
	b1.postorder();	
	
	System.out.println("Inorder");
	b1.inorder();
	
}
}



/*			 	 11

		22				33
		
		
	44		55		66		77
	
	*/