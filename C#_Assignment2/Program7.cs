class Program7
{
    public static void Run()
    {
        double total = 0;

        Console.Write("Enter product number: ");
        int p = Convert.ToInt32(Console.ReadLine());

        Console.Write("Enter quantity: ");
        int q = Convert.ToInt32(Console.ReadLine());

        switch (p)
        {
            case 1: total = 22.5 * q; break;
            case 2: total = 44.5 * q; break;
            case 3: total = 9.98 * q; break;
        }

        Console.WriteLine("Total Price: " + total);
    }
}