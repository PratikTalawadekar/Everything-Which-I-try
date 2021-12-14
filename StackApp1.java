class StackDemo3 {
    private int max;
    private long[] s1;
    private int top;

    public StackDemo3(int s)
    {
        top = -1;
        max = s;   //we can write max = 5 also
        s1 = new long[max];
    }

    public void push(long x)
    {
        s1[++top] = x;
    }

    public long pop()
    {
        return s1[top--];
    }

    public long peek()
    {
        return s1[top];
    }

    boolean isEmpty()
    {
        return(top == -1);
    }

    boolean isFull()
    {
        return(top == (max-1));
    }

    public void display()
    {
        for(int i = 0; i <= top;i++)
        {
            System.out.println(s1[i]);
        }
    }
}
class StackApp1 {
    public static void reverse(StringBuffer str)
    {
        int n = str.length();
        StackDemo3 s1 = new StackDemo3(n);
        for(int i = 0;i < n;i++)
        {
            s1.push(str.charAt(i));
        }
        for(int i = 0;i < n;i++)
        {
          char ch = (char)s1.pop();
          str.setCharAt(i,ch);
        }
    }
    public static void main(String[] args) {
    StringBuffer s = new StringBuffer("CDAC");
    reverse(s);
        System.out.println("Reversed String: "+s);
    }

}