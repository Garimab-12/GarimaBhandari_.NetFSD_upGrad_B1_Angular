using System;

class Assignment3_Hospital
{
    public static void Run()
    {
        Hospital.HospitalName = "City Care Hospital";
        Hospital.HospitalAddress = "Delhi";

        Hospital p1 = new Hospital();
        Hospital p2 = new Hospital();
        Hospital p3 = new Hospital();

        p1.PatientName = "Ravi";
        p2.PatientName = "Sita";
        p3.PatientName = "Amit";

        Console.WriteLine("Hospital Name: " + Hospital.HospitalName);
        Console.WriteLine("Hospital Address: " + Hospital.HospitalAddress);

        Console.WriteLine("Patient: " + p1.PatientName);
        Console.WriteLine("Patient: " + p2.PatientName);
        Console.WriteLine("Patient: " + p3.PatientName);
    }
}

class Hospital
{
    public static string HospitalName;
    public static string HospitalAddress;
    public string PatientName;
}