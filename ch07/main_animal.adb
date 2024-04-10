with Ada.Text_IO;
with Animal;

procedure Main_Animal is
  Rare_Pepe: Animal.Creature;
begin
  Rare_Pepe := Animal.Init("Rare Pepe", 2);
  Animal.Set_Legs(Rare_Pepe, 6);
exception
  when Animal.Wrong_Leg_Amount_Exception =>
    Ada.Text_IO.Put_Line("Animals don't have that many legs. Is an insect?");
end;
