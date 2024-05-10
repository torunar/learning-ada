with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO;  use Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;     use Ada.Strings.Unbounded;
with Ada.Containers.Doubly_Linked_Lists;

procedure Lists is
   package Company_Tracker is new Ada.Containers.Doubly_Linked_Lists(
      Element_Type => Unbounded_String
   );
   
   procedure Init_Companies(T: in out Company_Tracker.List) is
   begin
      T.Append(To_Unbounded_String("IBM"));
      T.Append(To_Unbounded_String("Dell"));
      T.Append(To_Unbounded_String("Microsoft"));
      T.Append(To_Unbounded_String("Google"));
      T.Append(To_Unbounded_String("Meta"));
   end Init_Companies;
   
   procedure Print_List_Item(Position : in Company_Tracker.Cursor) is
   begin
      Put_Line(Company_Tracker.Element(Position));
   end Print_List_Item;
   
   Companies : Company_Tracker.List;
begin
   Init_Companies(Companies);
   
   Put_Line(To_Unbounded_String("Iterate via List.Iterate:"));
   Companies.Iterate(Print_List_Item'access);
   
   New_Line;
   Put_Line(To_Unbounded_String("Iterate via `of`:"));
   for Element of Companies loop
      Put_Line(Element);
   end loop;
end Lists;
