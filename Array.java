class Array
{

public static void main(String[] args)
{
int[] a1;
a1 = new int[100];
int i,n = 10;

a1[0] = 25;
a1[1] = 39;
a1[2] = 47;
a1[3] = 14;
a1[4] = 59;
a1[5] = 77;
a1[6] = 11;
a1[7] = 5;
a1[8] = 3;
a1[9] = 98;
n=10;

//Display
for(i = 0; i<n ; i++)
{
	System.out.println(a1[i]);
}





//search
int key = 14;
for(i = 0;i<n;i++)
{
	if(a1[i] == key)
		break;
}

if(a1[i] == n)
		System.out.println("Not found");
else
System.out.println("found");


//Delete
System.out.println("Array after deletion of a number"); 
key = 5;
for(i=0;i<n;i++)
{
	if(a1[i] == key)
		break;
}
for(int k=i;k<n;k++)
{
	a1[k]=a1[k+1];
	
}
n--;


//Display
for(i = 0; i<n ; i++)
{
System.out.println(a1[i]);
}

}

}