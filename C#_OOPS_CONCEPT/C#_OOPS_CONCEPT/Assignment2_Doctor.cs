using System;

class Assignment2_Doctor
{
    public static void Run()
    {
        Doctor d1 = new Doctor();
        Doctor d2 = new Doctor();

        d1.DoctorId = 1;
        d1.DoctorName = "Dr Sharma";
        d1.Specialization = "Cardiologist";
        d1.ConsultationFee = 800;

        d2.DoctorId = 2;
        d2.DoctorName = "Dr Mehta";
        d2.Specialization = "Dermatologist";
        d2.ConsultationFee = 600;

        Console.WriteLine("Doctor 1 Details");
        Console.WriteLine(d1.DoctorId + " " + d1.DoctorName + " " + d1.Specialization + " " + d1.ConsultationFee);

        Console.WriteLine("\nDoctor 2 Details");
        Console.WriteLine(d2.DoctorId + " " + d2.DoctorName + " " + d2.Specialization + " " + d2.ConsultationFee);
    }
}

class Doctor
{
    public int DoctorId;
    public string DoctorName;
    public string Specialization;
    public double ConsultationFee;
}