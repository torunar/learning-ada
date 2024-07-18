with Ada.Text_IO;  use Ada.Text_IO;

procedure Type_Casting_Int is
   subtype Custom_Integer is Integer range -10 .. 10;

   package Integer_IO is new Ada.Text_IO.Integer_IO(Integer);
   
   Custom_Int     : Custom_Integer := Custom_Integer'First;
   User_Input_Int : Integer        := 0;
begin   
   Main_Loop:
   loop
      begin
         Put("> ");
         Integer_IO.Get(User_Input_Int);
         Custom_Int := Custom_Integer(User_Input_Int);
      exception
         when Constraint_Error =>
            Put_Line("Out of bounds");
            exit Main_Loop;
      end;
   end loop Main_Loop;
end Type_Casting_Int;
