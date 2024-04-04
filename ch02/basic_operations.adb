with Ada.Text_IO;
with Ada.Float_Text_IO;

procedure basic_operations is
  TestInteger  : Integer  := 7;
  TestPositive : Positive := 12;
  TestNatural  : Natural  := 0;
  Float1       : Float    := 0.1;
  Float2       : Float    := 0.2;
begin
  Ada.Text_IO.Put_Line("integer:  " & Integer'Image(TestInteger - 27));
  Ada.Text_IO.Put_Line("positive: " & Positive'Image(TestPositive - 7));
  Ada.Text_IO.Put_Line("natural:  " & Natural'Image(TestNatural + 27));
  
  Ada.Text_IO.Put_Line("float:    " & Float'Image(Float1 + Float2));
  Ada.Text_IO.Put("float:    ");
  Ada.Float_Text_IO.Put(Float1 + Float2, Exp => 0);
  Ada.Text_IO.New_Line;
  
  Ada.Text_IO.Put("float + int:");
  Ada.Float_Text_IO.Put(Float1 + Float(TestInteger), Exp => 0);
  Ada.Text_IO.New_Line;
  
  Ada.Text_IO.Put_Line(
    "int + float:"
    & Integer'Image(TestInteger + Integer(Float2))
  );
  
  Ada.Text_IO.Put_Line(Boolean'Image(True xor True));
end basic_operations;
