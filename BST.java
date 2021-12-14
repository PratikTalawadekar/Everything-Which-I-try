class BST
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
		

	
	void preorder(Node n)//Root,LC,RC
	{
		if(n == null)
			return;
		System.out.println(n.data);
		preorder(n.left);
		preorder(n.right);
	}
	
	void inorder(Node n)//LC,Root,RC
	{
		if(n == null)
			return;
		
		inorder(n.left);
		System.out.println(n.data);
		inorder(n.right);
	}
	
	void postorder(Node n)//LC,RC,Root
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
	
	
	Node insertdata(Node root, int key)
	{
		if(root == null)
		{
			root =new Node(key);
			return root;
		}
		
		if(key <= root.data)
			root.left= insertdata(root.left, key);
		else
			root.right=insertdata(root.right, key);
			
		return root;
	}
	
	void insert(int key)
	{
			root = insertdata(root, key);
	}
	
		Node deletedata(Node root,int key)
	{
		//Empty
		if(root == null)
		return root;
		
		if(key < root.data)
		root.left = deletedata(root.left,key);
		else if(key > root.data)
		root.right = deletedata(root.right,key);

		else{
		//Code for case 1 & 2
		
		if(root.left == null)
			return root.right;
		else if(root.right == null)
			return root.left;
		
		//Code for case 3
		root.data = minvalue(root.right);
		
		//deleting this element in inorder and
		//replace it with successor node
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
		root = deletedata(root,key);
	}
		
		
	
	
	
	
	public static void main(String args [])
	{
		BST b1 = new BST();
		b1.insert(33);
		b1.insert(25);
		b1.insert(75);
		b1.insert(50);
		
		System.out.println("Preorder");
		b1.preorder();
		b1.delete(75);
		
		System.out.println("Inorder");
		b1.inorder();
		
		//System.out.println("Postorder");
		//b1.postorder();
	}
	
	}