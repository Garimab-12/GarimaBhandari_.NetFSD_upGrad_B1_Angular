using System;

namespace MovieTicketApp
{
    class TicketException : Exception
    {
        public TicketException(string message) : base(message)
        {
        }
    }

    class MovieTicketProgram
    {
        static void Main()
        {
            int availableTickets = 15;

            try
            {
                Console.WriteLine("Do you want to book tickets? (yes/no)");
                string choice = Console.ReadLine();

                if (choice.ToLower() == "yes")
                {
                    Console.WriteLine("Enter number of tickets:");
                    int tickets = Convert.ToInt32(Console.ReadLine());

                    if (tickets > availableTickets)
                    {
                        throw new TicketException("Not enough tickets available!");
                    }

                    availableTickets -= tickets;

                    Console.WriteLine("Booking successful!");
                    Console.WriteLine("Remaining tickets: " + availableTickets);
                }
                else
                {
                    Console.WriteLine("Thank you!");
                }
            }
            catch (TicketException ex)
            {
                Console.WriteLine("Exception: " + ex.Message);
            }
            catch (FormatException)
            {
                Console.WriteLine("Invalid input!");
            }
        }
    }
}