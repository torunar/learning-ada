with Ada.Text_IO;
with Animal;

procedure Main_Animal is
begin
  Ada.Text_IO.Put_Line("Program started");
  Ada.Text_IO.New_Line;
  
  Animal.Print(Animal.Init("Pepe", 2));
  Ada.Text_IO.New_Line;
  
  Animal.Print(Animal.Init_Access("Rare Pepe", 2).all);
  Ada.Text_IO.New_Line;
  
  Ada.Text_IO.Put_Line("Program finished");
  Ada.Text_IO.New_Line;
end;
