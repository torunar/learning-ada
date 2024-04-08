with Ada.Text_IO;

procedure Functions_Procedures is
  procedure Add
    (A : in out Integer;
     B : in     Integer) is
  begin
    A := A + B;
  end Add;
  
  function Sum
    (A : in Integer;
     B : in Integer) 
    return Integer is
  begin
    return A + B;
  end Sum;
  
  Add_A      : Integer := 10;
  Add_B      : Integer := 5;
  Sum_A      : Integer := 10;
  Sum_B      : Integer := 5;
  Sum_Result : Integer;
begin
  Add(Add_A, Add_B);
  Sum_Result := Sum(Sum_A, Sum_B);
  Ada.Text_IO.Put_Line(
    "Add_A:" & Integer'Image(Add_A) &
      ", Add_B:" & Integer'Image(Add_B)
  );    
  Ada.Text_IO.Put_Line(
      "Sum_A:" & Integer'Image(Sum_A) &
        ", Sum_B:" & Integer'Image(Sum_B) &
        ", Sum_Result:" & Integer'Image(Sum_Result)
  );
end Functions_Procedures;
