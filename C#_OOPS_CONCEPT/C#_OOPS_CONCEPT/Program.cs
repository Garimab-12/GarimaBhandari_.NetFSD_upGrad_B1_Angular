using System;

class Patient
{
    // Fields
    public int PatientId;
    public string PatientName;
    public int Age;
    public string Disease;
}

class Program
{
    static void Main()
    {
        // Creating object
        Patient p1 = new Patient();

        // Assigning values
        p1.PatientId = 101;
        p1.PatientName = "Ravi Kumar";
        p1.Age = 45;
        p1.Disease = "Diabetes";

        // Displaying details
        Console.WriteLine("Patient Id: " + p1.PatientId);
        Console.WriteLine("Patient Name: " + p1.PatientName);
        Console.WriteLine("Age: " + p1.Age);
        Console.WriteLine("Disease: " + p1.Disease);

       
        //Assignment2_Doctor.Run();
        //Assignment3_Hospital.Run();
        //Assignment4_Appointment.Run();
        //Assignment5_MedicalTest.Run();
        //Assignment6_Billing.Run();
        //Assignment7_Nurse.Run();
    }
}