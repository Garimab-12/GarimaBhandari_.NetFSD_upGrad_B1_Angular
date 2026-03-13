class Program14
{
    public static void Run()
    {
        int min = int.MaxValue;

        for (int i = 1; i <= 5; i++)
        {
            int num = Convert.ToInt32(Console.ReadLine());

            if (num < min)
                min = num;
        }

        Console.WriteLine("Smallest: " + min);
    }
}