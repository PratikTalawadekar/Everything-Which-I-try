class BinarySearchTree
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

BinarySearchTree(int d)
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


/* ******************************************** */

void postorder()
{
postorder(root);
}
}

Node insertdata(Node root, int key)
{
if(root == null)
{
root = new Node(key);
return;
}

if(key <= root.data)
{
	root.left= insertdata(root.left, key);
	else
	root.right=insertdata(root.right, key);
	
	return;
}
void insert(int key)
{
	root = insertdata(root, key);
}
}	
	
	
	public static void main(String[] PRT)
	{
		BinarySearchTree b1 = new BinarySearchTree();
			b1.insert(33);
			b1.insert(25);
			b1.insert(75);
		
		System.out.println("Preorder");
		b1.preorder
		
		System.out.println("Postorder");
		b1.postorder
		
		System.out.println("inorder");
		b1.inorder
	}