using System;

class Assignment5_MedicalTest
{
    public static void Run()
    {
        MedicalTest t1 = new MedicalTest(1, "Blood Test", 500);
        MedicalTest t2 = new MedicalTest(2, "X-Ray", 1200);

        Console.WriteLine(t1.TestId + " " + t1.TestName + " " + t1.TestCost);
        Console.WriteLine(t2.TestId + " " + t2.TestName + " " + t2.TestCost);
    }
}

class MedicalTest
{
    public int TestId;
    public string TestName;
    public double TestCost;

    public MedicalTest(int id, string name, double cost)
    {
        TestId = id;
        TestName = name;
        TestCost = cost;
    }
}