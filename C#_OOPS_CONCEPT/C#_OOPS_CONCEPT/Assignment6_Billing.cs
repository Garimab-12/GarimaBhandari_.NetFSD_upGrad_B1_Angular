using System;

class Assignment6_Billing
{
    public static void Run()
    {
        Billing b1 = new Billing();

        b1.PatientName = "Ramesh";
        b1.ConsultationFee = 500;
        b1.TestCharges = 1000;

        b1.CalculateTotalBill();
    }
}

class Billing
{
    public string PatientName;
    public double ConsultationFee;
    public double TestCharges;

    public void CalculateTotalBill()
    {
        double total = ConsultationFee + TestCharges;

        Console.WriteLine("Patient Name: " + PatientName);
        Console.WriteLine("Total Bill: " + total);
    }
}