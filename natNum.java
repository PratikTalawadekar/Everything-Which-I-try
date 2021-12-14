//// SUM OF N NATURAL NUMBERS


import java.util.*;
class natNum
{
public static void main(String[] PRT)
{

Scanner sc = new Scanner(System.in);

System.out.println("Enter a valid number");
int n = sc.nextInt();

int count = ((n*(n+1))/2);   		// Formula very important
System.out.println("The Nth NATURAL number is :"+count);

}
}

