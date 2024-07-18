with Ada.Text_IO;

procedure Custom_Number_Range is
   type Byte is range 0 .. 255;
   
   Some_Byte : Byte := 0;
begin
   Ada.Text_IO.Put_Line(Byte'Image(Some_Byte));
end Custom_Number_Range;
