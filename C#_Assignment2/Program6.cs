class Program6
{
    public static void Run()
    {
        Console.Write("Enter Fahrenheit: ");
        double f = Convert.ToDouble(Console.ReadLine());

        double c = (f - 32) * 5 / 9;

        Console.WriteLine("Celsius: " + c);
    }
}