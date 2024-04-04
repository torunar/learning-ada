with Ada.Text_IO;
with Ada.Strings;
with Ada.Strings.Fixed;

procedure strings_example is
  ShorterString1 : String := "Hello there1";
  ShorterString2 : String := "Hello there2";
  LongerString : String   := "This hello there is much longer";
  LongEmptyString : String(1 .. 250);
begin
  Ada.Text_IO.Put_Line("len(ShorterString1)=" & Integer'Image(ShorterString1'Length));
  Ada.Text_IO.Put_Line("len(LongerString)=" & Integer'Image(LongerString'Length));
  Ada.Text_IO.Put_Line("len(LongEmptyString)=" & Integer'Image(LongEmptyString'Length));
  
  Ada.Strings.Fixed.Move(ShorterString1, LongerString);
  Ada.Strings.Fixed.Move(ShorterString1, LongEmptyString);
  Ada.Strings.Fixed.Move(LongEmptyString, ShorterString2);
  
  Ada.Text_IO.Put_Line(LongerString);
  Ada.Text_IO.Put_Line(ShorterString2);
  
  LongerString := "This hello there is much longer";
  Ada.Text_IO.Put_Line(LongerString);
end strings_example;
