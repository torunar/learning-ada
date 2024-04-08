with Ada.Numerics.Discrete_Random;
with Ada.Numerics.Float_Random;
with Ada.Strings.Unbounded;

procedure Lab is
  subtype Years is Natural range 0 .. 100;
  subtype Hours is Natural range 0 .. 366 * 24;
  subtype Salary_Type is Float range 500.00 .. 5_500.00;
  
  type Employee is record
    First_Name    : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("");
    Last_Name     : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("");
    Age           : Years                                  := Years'First;
    Experience    : Years                                  := Years'First;
    Vacation_Time : Hours                                  := Hours'First;
    Sick_Time     : Hours                                  := Hours'First;
    Salary        : Salary_Type                            := Salary_Type'First;
  end record;
  
  package Random_Years is new Ada.Numerics.Discrete_Random(Years);
  package Random_Hours is new Ada.Numerics.Discrete_Random(Hours);
  
  function Get_Random_Years
    return Years is
    Years_RNG : Random_Years.Generator;
  begin
    Random_Years.Reset(Years_RNG);
    return Random_Years.Random(Years_RNG);
  end Get_Random_Years;
  
  function Get_Random_Hours
    return Hours is
    Hours_RNG : Random_Hours.Generator;
  begin
    Random_Hours.Reset(Hours_RNG);
    return Random_Hours.Random(Hours_RNG);
  end Get_Random_Hours;
  
  function Get_Random_Salary
    return Salary_Type is
    Salary_RNG: Ada.Numerics.Float_Random.Generator;
  begin
    Ada.Numerics.Float_Random.Reset(Salary_RNG);
    return Salary_Type'First + Ada.Numerics.Float_Random.Random(Salary_RNG) * (Salary_Type'Last - Salary_Type'First);
  end Get_Random_Salary;
  
  Company : array(1 .. 10) of Employee;
begin
  for Index in Company'Range loop
    Company(Index).First_Name := Ada.Strings.Unbounded.To_Unbounded_String("Unit");
    Company(Index).Last_Name := Ada.Strings.Unbounded.To_Unbounded_String(Positive'Image(Index));
    Company(Index).Age := Get_Random_Years;
    Company(Index).Experience := Get_Random_Years;
    Company(Index).Vacation_Time := Get_Random_Hours;
    Company(Index).Sick_Time := Get_Random_Hours;
    Company(Index).Salary := Get_Random_Salary;
  end loop;
end Lab;
