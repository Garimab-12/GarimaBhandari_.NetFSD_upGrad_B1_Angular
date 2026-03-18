using System;

namespace InterfaceAssignment
{
    // Interface
    interface ISales
    {
        int YearlySales();
    }

    // Abstract Class
    abstract class Sales
    {
        // Abstract Method
        public abstract int MonthlySales();

        // Non-Abstract Method
        public int DailySales()
        {
            return 400;
        }
    }

    // Main Class
    class SalesCalculation : Sales, ISales
    {
        public override int MonthlySales()
        {
            return DailySales() * 30;
        }

        public int YearlySales()
        {
            return MonthlySales() * 12;
        }
    }

    // Main Program
    class Program
    {
        static void Main()
        {
            SalesCalculation obj = new SalesCalculation();

            Console.WriteLine("Daily sales: Rs." + obj.DailySales());
            Console.WriteLine("Monthly sales: Rs." + obj.MonthlySales());
            Console.WriteLine("Annual sales: Rs." + obj.YearlySales());
        }
    }
}