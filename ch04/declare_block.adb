with Ada.Text_IO;

procedure Declare_Block is
  Tested_Number : Positive := 4;
begin
  Ada.Text_IO.Put_Line("Tested_Number before declare" & Positive'Image(Tested_Number));
  
  declare
    IsEven : Boolean := False;
  begin
    IsEven := Tested_Number rem 2 = 0;
    if not IsEven then
      Tested_Number := Tested_Number * 2;
    end if;
  end;
  
  Ada.Text_IO.Put_Line("Tested_Number after declare" & Positive'Image(Tested_Number));
end Declare_Block;
