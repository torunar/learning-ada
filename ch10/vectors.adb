with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO;  use Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;     use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;

procedure Vectors is
   package Company_Tracker is new Ada.Containers.Vectors(
      Index_Type => Positive,
      Element_Type => Unbounded_String
   );
   
   procedure Init_Companies(T : in out Company_Tracker.Vector) is
   begin
      T.Append(To_Unbounded_String("IBM"));
      T.Append(To_Unbounded_String("Dell"));
      T.Append(To_Unbounded_String("Microsoft"));
      T.Append(To_Unbounded_String("Google"));
      T.Append(To_Unbounded_String("Meta"));
   end Init_Companies;
   
   procedure Print_Vector_Item(Position : in Company_Tracker.Cursor) is
   begin
      Put_Line(Company_Tracker.Element(Position));
   end Print_Vector_Item;
   
   Companies : Company_Tracker.Vector;
begin
   Init_Companies(Companies);
   
   Put_Line(To_Unbounded_String("Iterate via Vector.Element:"));
   for Index in 1 .. Companies.Length loop
      Put_Line(Companies.Element(Positive(Index)));
   end loop;
   
   New_Line;
   Put_Line(To_Unbounded_String("Iterate via Vector.Iterate:"));
   Companies.Iterate(Print_Vector_Item'access);
   
   New_Line;
   Put_Line(To_Unbounded_String("Iterate via Vector.To_Cursor:"));
   for Index in 1 .. Companies.Length loop
      Print_Vector_Item(
         Company_Tracker.To_Cursor(Companies, Positive(Index))
      );
   end loop;
   
   New_Line;
   Put_Line(To_Unbounded_String("Iterate via `of`:"));
   for Element of Companies loop
      Put_Line(Element);
   end loop;
end Vectors;
