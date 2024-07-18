with Ada.Text_IO;  use Ada.Text_IO;

procedure Limited_Types is
   type Integer_Storage is limited record
      Stored_Value : Integer := 0;
   end record;
   
   Val1 : Integer_Storage;
   Val2 : Integer_Storage;
begin
   Put_Line(Boolean'Image(Val1 = Val2));
end Limited_Types;
