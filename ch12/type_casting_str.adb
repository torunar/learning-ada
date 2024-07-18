with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;  use Ada.Strings.Unbounded;

procedure Type_Casting_Str is
   subtype Currency_Code is String(1 .. 3);
   
   Eur_Code   : Currency_Code    := "EUR";
   Usd_Code   : Currency_Code    := "USD";
   User_Input : Unbounded_String := Null_Unbounded_String;
begin
   Main_Loop:
   loop
      begin
         Put("> ");
         Get_Line(User_Input);
         Put_Line(Currency_Code(To_String(User_Input)));
      exception
         when Constraint_Error =>
            Put_Line("Out of bounds");
            exit Main_Loop;
      end;
   end loop Main_Loop;
end Type_Casting_Str;
