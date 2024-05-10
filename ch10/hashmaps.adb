with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;    use Ada.Strings.Unbounded;
with Ada.Characters.Handling;  use Ada.Characters.Handling;
with Ada.Strings.Hash_Case_Insensitive;
with Ada.Containers.Hashed_Maps;

procedure Hashmaps is
   type Company is record
      Name         : Unbounded_String := Null_Unbounded_String;
      Employees    : Natural          := 0;
   end record;
   
   function Hash_Func
      (Key : in Unbounded_String)
         return Ada.Containers.Hash_Type is
   begin
      return Ada.Strings.Hash_Case_Insensitive(To_String(Key));
   end Hash_Func;
   
   function Equivalent_Keys
      (Left:  in Unbounded_String;
       Right: in Unbounded_String)
         return Boolean is
   begin
      return Left = Right;
   end Equivalent_Keys;
   
   package Company_Tracker is new Ada.Containers.Hashed_Maps(
      Key_Type => Unbounded_String,
      Element_Type => Company,
      Hash => Hash_Func,
      Equivalent_Keys => Equivalent_Keys
   );
   
   procedure Init_Companies(T : in out Company_Tracker.Map) is
   begin
      T.Insert(
         Key      => To_Unbounded_String("ibm"),
         New_Item => Company'(To_Unbounded_String("IBM"), 230_000)
      );
      T.Insert(
         Key      => To_Unbounded_String("dell"),
         New_Item => Company'(To_Unbounded_String("Dell"), 430_000)
      );
      T.Insert(
         Key      => To_Unbounded_String("microsoft"),
         New_Item => Company'(To_Unbounded_String("Microsoft"), 570_000)
      );
      T.Insert(
         Key      => To_Unbounded_String("google"),
         New_Item => Company'(To_Unbounded_String("Google"), 1_570_000)
      );
      T.Insert(
         Key      => To_Unbounded_String("meta"),
         New_Item => Company'(To_Unbounded_String("Meta"), 1)
      );
   end Init_Companies;
   
   Companies : Company_Tracker.Map;
begin
   Init_Companies(Companies);
   
   for Element of Companies loop
      Put_Line(
         Element.Name
           & ":"
           & Integer'Image(Element.Employees)
      );
   end loop;
end Hashmaps;
