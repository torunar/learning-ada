with Ada.Text_IO;
with Ada.Float_Text_IO;
with Calculator;

procedure Main_Calculator is
begin
  Ada.Text_IO.Put_Line(Integer'Image(Calculator.Add(120, 300)));
  Ada.Float_Text_IO.Put(Calculator.Add(4.0, 0.2), Exp => 0, Aft => 2);
end Main_Calculator;
