with Ada.Text_IO;
with Ada.Strings;
with Ada.Strings.Fixed;
with Ada.Strings.Unbounded;
with Ada.Float_Text_IO;

procedure lab_01 is
  Item1Name : String := "Oil change";
  Item1Price : Integer := 440;
  Item2Name : String := "Washing fluid";
  Item2Price : Float := 98.40;
  Item3Name : String := "Air filter";
  Item3Price : Integer := 23;
  Item4Name : String := "Fuel";
  Item4Price : Float := 900.40;
  Item5Name : String := "Company pizza luncheon";
  Item5Price : Float := 71.49;
  Item6Name : String := "Fuel";
  Item6Price : Float := 90.01;
  Total : Float := 0.0;
  PriceBuffer : String(1 .. 10);
  package Float_IO is new Ada.Text_IO.Float_IO (Float);
begin
  Total := Float(Item1Price)
    + Item2Price
    + Float(Item3Price)
    + Item4Price
    + Item5Price
    + Item6Price;
  
  Ada.Strings.Fixed.Move(Source => Integer'Image(Item1Price), Target => PriceBuffer, Justify => Ada.Strings.Right);
  Ada.Text_IO.Put_Line(PriceBuffer & " " & Item1Name);
  
  Float_IO.Put(To => PriceBuffer, Item => Item2Price, Aft => 2, Exp => 0);
  Ada.Text_IO.Put_Line(PriceBuffer & " " & Item2Name);
  
  Ada.Strings.Fixed.Move(Source => Integer'Image(Item3Price), Target => PriceBuffer, Justify => Ada.Strings.Right);
  Ada.Text_IO.Put_Line(PriceBuffer & " " & Item3Name);
  
  Float_IO.Put(To => PriceBuffer, Item => Item4Price, Aft => 2, Exp => 0);
  Ada.Text_IO.Put_Line(PriceBuffer & " " & Item4Name);
  
  Float_IO.Put(To => PriceBuffer, Item => Item5Price, Aft => 2, Exp => 0);
  Ada.Text_IO.Put_Line(PriceBuffer & " " & Item5Name);
  
  Float_IO.Put(To => PriceBuffer, Item => Item6Price, Aft => 2, Exp => 0);
  Ada.Text_IO.Put_Line(PriceBuffer & " " & Item6Name);
  
  Float_IO.Put(To => PriceBuffer, Item => Total, Aft => 2, Exp => 0);
  Ada.Text_IO.Put_Line(PriceBuffer & " Total");
end lab_01;
