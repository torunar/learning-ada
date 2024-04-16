with Ada.Text_IO;
with Ada.Strings.Fixed;

procedure Line_By_Line is
  Filename   : String  := "line_by_line.adb";
  Line_Count : Natural := 0;
  File       : Ada.Text_IO.File_Type;
begin
  Ada.Text_IO.Open(
    File => File,
    Mode => Ada.Text_IO.In_File,
    Name => Filename
  );
  
  while not Ada.Text_IO.End_Of_File(File) loop
    declare
      Line : String := Ada.Text_IO.Get_Line(File);
    begin
      if Ada.Strings.Fixed.Count(Line, "Ada") > 0 then
        Line_Count := Line_Count + 1;
      end if;
    end;
  end loop;
  
  Ada.Text_IO.Put_Line("Ada mentioned on " & 
    Natural'Image(Line_Count) &
    " lines"
  );
  
  Ada.Text_IO.Close(File);
end Line_By_Line;
