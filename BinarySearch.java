class BinarySearch
{
static int Bisearch(int a1[], int key)
{
int l=0, h=a1.length-1;
while(l <=h)
{
int m=l+(h-1)/2;

if(a1[m] == key)
return m;

if(a1[m] < key)
l=m+1;
else
h=m-1;

}
return -1;
}



public static void main(String args[])
{
int a1[]={11,22,55,57,77,88,99,152};
int key=11;
int res = Bisearch(a1,key);
if(res == -1)
System.out.println("Not Found !!");
else
System.out.println("Found !!");
}
}