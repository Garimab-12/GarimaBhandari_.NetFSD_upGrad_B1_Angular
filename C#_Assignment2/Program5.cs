class Program5
{
    public static void Run()
    {
        int even = 0, odd = 0;

        Console.WriteLine("Enter numbers (0 to stop)");

        while (true)
        {
            int num = Convert.ToInt32(Console.ReadLine());

            if (num == 0)
                break;

            if (num % 2 == 0)
                even++;
            else
                odd++;
        }

        Console.WriteLine("Even: " + even);
        Console.WriteLine("Odd: " + odd);
    }
}