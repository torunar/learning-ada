with Ada.Text_IO;

procedure Exceptions_Catching_With_Declare is
  Left  : Integer := 42;
  Right : Integer := 0;
begin
  declare
    Tmp : Integer := 0;
  begin
    Tmp := Left / Right;
  exception
    when Constraint_Error =>
      Ada.Text_IO.Put_Line("Constraint_Error");
    when others =>
      Ada.Text_IO.Put_Line("???");
  end;
  
  Ada.Text_IO.Put_Line(Integer'Image(Left));
end Exceptions_Catching_With_Declare;

