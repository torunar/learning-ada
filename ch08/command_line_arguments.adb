with Ada.Command_Line;
with Ada.Text_IO;

procedure Command_Line_Arguments is
begin
  Ada.Text_IO.Put_Line("App name and path: " & Ada.Command_Line.Command_Name);
  
  Ada.Text_IO.Put_Line(Natural'Image(Ada.Command_Line.Argument_Count) & " argument(s):");
  for Arg in 1 .. Ada.Command_Line.Argument_Count loop
    Ada.Text_IO.Put_Line(Ada.Command_Line.Argument(Arg));
  end loop;
end Command_Line_Arguments;
