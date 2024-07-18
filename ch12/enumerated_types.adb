with Ada.Text_IO; use Ada.Text_IO;

procedure Enumerated_Types is
   type Direction is (up, right, down, left);
   
   procedure Turn_Clockwise(Current_Direction : in out Direction) is
   begin
      case Current_Direction is
         when up => 
            Current_Direction := right;
         when right =>
            Current_Direction := down;
         when down =>
            Current_Direction := left;
         when others =>
            Current_Direction := up;
      end case;
   end Turn_Clockwise;
   
   procedure Print_Direction(Current_Direction : in Direction) is
   begin
      case Current_Direction is
         when up => Put_Line("up");
         when right => Put_Line("right");
         when down => Put_Line("down");
         when left => Put_Line("left");
      end case;
   end Print_Direction;
   
   Current_Direction : Direction := up;
begin
   for Index in 1 .. 8 loop
      Print_Direction(Current_Direction);
      Turn_Clockwise(Current_Direction);
   end loop;
end Enumerated_Types;
