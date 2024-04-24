with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;

procedure Concat_Strings is
   First_Name :  Unbounded_String := To_Unbounded_String("John");
   Last_Name  :  Unbounded_String := To_Unbounded_String("Smith");
   Full_Name  :  Unbounded_String := Null_Unbounded_String;
   Short_Name :  Unbounded_String := Null_Unbounded_String;
begin
   Full_Name := First_Name;
   Append(Full_Name, ' ');
   Append(Full_Name, Last_Name);
   Put_Line(Full_Name);
   
   Short_Name := Unbounded_Slice(Full_Name, 1, 6);
   Append(Short_Name, '.');
   Put_Line(Short_Name);
end Concat_Strings;
