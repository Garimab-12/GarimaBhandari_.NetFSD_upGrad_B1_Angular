class Program17
{
    public static void Run()
    {
        Console.Write("Enter word: ");
        string word = Console.ReadLine();

        char[] arr = word.ToCharArray();
        Array.Reverse(arr);

        Console.WriteLine(new string(arr));
    }
}