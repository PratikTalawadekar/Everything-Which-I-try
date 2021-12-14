//Deletion in Binary Search Tree

class BST11
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

BST(int d)
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
}

/* ******************************************** */

Node deletedata(Node root, int key)
{
	if(root == null)
	return root;

if(key < root.data)
	root.left = deletedata(root.left,key);
else if(key > root.data)	
	root.right = deletedata(root.right,key);
	
	//Code for case 1& 2
	
	if(root.left == null)
	return root.right;
	
	//Code for case 3
	
	root.data = minvalue(root.right);
	
	//deleting the element in Inorder and relplacing it with Successor node
	root.right = deletedata(root.right,root.data);
	}
	return root;
	
	}
	
int minvalue(Node root)
	{
	int x = root.data;
	while(root.left != null)
	{
		x = root.left.data;
		root = root.left;
	}
	return x;
}


void delete(int key)
{
	root = deletedata(root, key);
}

public static void main(String[] PRT)
{
BST b1 = new BST();
b1.insert(33);
b1.insert(25);
b1.insert(75);
b1.insert(50);

System.out.println("Preorder");
b1.preorder();

b1.delete(75);

System.out.println("Preorder");
b1.preorder();
}
}
}


