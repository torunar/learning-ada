with Ada.Text_IO;
with Ada.Task_Identification;
with Ada.Numerics.Discrete_Random;

procedure Recursion is
  Min          : Positive := 10;
  Max          : Positive := 50;
  Target_Value : Positive := 45;
  
  function Get_Random_Number
    (Min : in Positive;
     Max : in Positive)
    return Positive is
  begin
    if (Min >= Max) then
      Ada.Task_Identification.Abort_Task(Ada.Task_Identification.Current_Task);
    end if;
      
    declare
      subtype RandomPositive is Positive range Min .. Max;
      package Random_Min_Max is new Ada.Numerics.Discrete_Random(RandomPositive);
      RNG : Random_Min_Max.Generator;
    begin
      Random_Min_Max.Reset(RNG);
      return Random_Min_Max.Random(RNG);
    end;
  end Get_Random_Number;
  
  function Count_Tries_Until_Target_Value_Reached
    (Target_Value : in Positive;
     Tries_Count  : in Natural)
    return Positive is
  begin
    if (Get_Random_Number(Min, Max) >= Target_Value) then
      return Tries_Count;
    else
      return Count_Tries_Until_Target_Value_Reached(Target_Value, Tries_Count + 1);
    end if;
  end Count_Tries_Until_Target_Value_Reached;
begin
  Ada.Text_IO.Put_Line(
    "it took " & Positive'Image(Count_Tries_Until_Target_Value_Reached(Target_Value, 1)) &
      " tries to get number >= " & Positive'Image(Target_Value)
  );
end Recursion;
