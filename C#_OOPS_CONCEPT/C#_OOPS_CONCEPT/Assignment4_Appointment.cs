using System;

class Assignment4_Appointment
{
    public static void Run()
    {
        Appointment a1 = new Appointment();

        a1.AppointmentId = 101;
        a1.PatientName = "Ravi";

        Console.WriteLine("Appointment Id: " + a1.AppointmentId);
        Console.WriteLine("Patient Name: " + a1.PatientName);
        Console.WriteLine("Doctor Name: " + a1.DoctorName);
        Console.WriteLine("Appointment Date: " + a1.AppointmentDate.ToShortDateString());
    }
}

class Appointment
{
    public int AppointmentId;
    public string PatientName;
    public string DoctorName;
    public DateTime AppointmentDate;

    public Appointment()
    {
        DoctorName = "General Physician";
        AppointmentDate = DateTime.Today;
    }
}