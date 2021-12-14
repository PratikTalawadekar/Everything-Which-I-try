class LSException
{
static int search(int a1[], int key)
{
for(int i=0;i<a1.length;i++)
{
if(a1[i] == key)
{
return i;
}
}
return -1;
}
public static void main(String args[])
{
int a1[]={11,22,55,5,77};
int key=5;
int res = search(a1,key);
if(res == -1)
System.out.println("Not Found !!");
else
System.out.println("Found !!");
}
}