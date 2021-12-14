//Bubble Sort

class BubbleSort
{
void bubblesort(int a1[])
{
int n = a1.length;
for(int i = 0; i<n-1; i++) //iteration
	for(int j = 0; j<n-i-1;j++) //element comparision
	{	
		if(a1[j] > a1[j+1])
		{
		int temp = a1[j];
		a1[j] = a1[j+1];
		a1[j+1] = temp;
	}	
}
}


void selectionsort(int a1[])
{
int n=a1.length;

for(int i = 0; i<n-1;i++)
{
int min = i;
	for(int j = i+1;j<n; j++)
{
if(a1[j] < a[min]) //7, 6 => 6
min = j; // min => 6
}
int temp = a1[min];
a1[min] = a1[i];
a1[i] = temp;
}	
}

void display(int a1[])
{
int n = a1.length;
for(int i=0;i<n;i++)
{
System.out.println(a1[i]+ " ");
}
System.out.println();
}

public static void main(String[] PRT)
{
	int[] a1 = {10,22,44,55,66,77};
	
BubbleSort b1 = new BubbleSort();
//b1.bubblesort(a1);
b1.display();

b1.selectionsort();
b1.display();
}
}