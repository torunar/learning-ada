with Ada.Text_IO;
with Ada.Strings.Unbounded;

procedure String_Array is
  Str_Array : array (1 .. 10) of Ada.Strings.Unbounded.Unbounded_String;
begin
  for I in Str_Array'Range loop
    Ada.Strings.Unbounded.Append(Str_Array(I), "This is a string #");
    Ada.Strings.Unbounded.Append(Str_Array(I), Positive'Image(I));
    Ada.Text_IO.Put_Line(Ada.Strings.Unbounded.To_String(Str_Array(I)));
  end loop;
end String_Array;
