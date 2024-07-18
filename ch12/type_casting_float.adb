with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Float_Text_IO;  use Ada.Float_Text_IO;

procedure Type_Casting_Float is
   type Temperature_C is delta 0.01 range -273.15 .. 999.99;
   
   procedure Show_Temperature(Temperature : in Float) is
   begin
      Put(
        Temperature,
        Fore => 3,
        Aft => 4,
        Exp => 0
      );
      New_Line;
   end Show_Temperature;
   
   Current_Temperature : Temperature_C := 27.90;
begin
   Show_Temperature(Float(Current_Temperature));
end Type_Casting_Float;
