class BinarySearchRecursion
{
static int Bisearchre(int a1[], int key, int l,int h)
{
if(h>=1)
{
int mid =l+(h-l)/2;
if(a1[mid] == key)
return mid;
if(a1[mid] < key)
return Bisearchre(a1, key, l ,mid-1);
return Bisearchre(a1, key, mid+1 ,h);
}
return -1;
}



public static void main(String args[])
{
int a1[]={11,22,55,57,77,88,99,152};
int key=22;
int x = a1.length-1;
int res = Bisearchre(a1,key,0,x);
if(res == -1) 
System.out.println("Not Found !!");
else
System.out.println("Found !!");
}
}