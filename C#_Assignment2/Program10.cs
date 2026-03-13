class Program10
{
    public static void Run()
    {
        int a = 0, b = 1, c;

        Console.Write(a + " " + b + " ");

        while (true)
        {
            c = a + b;

            if (c > 40)
                break;

            Console.Write(c + " ");

            a = b;
            b = c;
        }
    }
}