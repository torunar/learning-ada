with Ada.Text_IO;

procedure Exceptions_Catching is
  Left  : Integer := 42;
  Right : Integer := 0;
begin
  Left := Left / Right;
exception
  when Constraint_Error =>
    Ada.Text_IO.Put_Line("Constraint_Error");
  when others =>
    Ada.Text_IO.Put_Line("???");
end Exceptions_Catching;
