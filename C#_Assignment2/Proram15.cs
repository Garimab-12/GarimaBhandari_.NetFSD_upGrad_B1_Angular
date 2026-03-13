class Program15
{
    public static void Run()
    {
        int[] marks = new int[10];
        int total = 0;

        for (int i = 0; i < 10; i++)
        {
            marks[i] = Convert.ToInt32(Console.ReadLine());
            total += marks[i];
        }

        Array.Sort(marks);

        Console.WriteLine("Total: " + total);
        Console.WriteLine("Average: " + (total / 10.0));
        Console.WriteLine("Min: " + marks[0]);
        Console.WriteLine("Max: " + marks[9]);
    }
}