with Ada.Text_IO;  use Ada.Text_IO;

procedure Subtypes is
   subtype Menu_Entry is Integer range 0 .. 4;
   
   package Menu_Input is new Ada.Text_IO.Integer_IO(Menu_Entry);
   
   Current_Entry : Menu_Entry := 1;
   Is_Something_Ordered : Boolean := False;
begin
   Main_Menu:
   loop
      if (Is_Something_Ordered) then
         Put_Line("Want anything else?");
      else
         Put_Line("Want something?");
      end if;
      Put_Line("[1] Banana");
      Put_Line("[2] Ananas");
      Put_Line("[3] Apple");
      Put_Line("[4] Cabbage");
      Put_Line("[0] Exit");
      Put("> ");
      
      begin
         Menu_Input.Get(Current_Entry);
         case Current_Entry is
            when 1 => 
               Put_Line("What are you, a monkey?");
            when 2 =>
               Put_Line("Do you call it a pineapple?");
            when 3 =>
               Put_Line("Keeping a doctor away, huh?");
            when 4 =>
               Put_Line("You sick bastard");
            when 0 =>
               Put_Line("Bye!");
               exit Main_Menu;
         end case;
         Is_Something_Ordered := True;
      exception
         when others => 
            Put_Line("Just decide it already, man");
      end;
      
      New_Line;
   end loop Main_Menu;
end Subtypes;

