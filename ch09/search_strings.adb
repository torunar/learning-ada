with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Search_Strings is
   Source : Unbounded_String := To_Unbounded_String(
      "This text has multiple sentences."
        & "Some are short."
        & "Some are a bit longer."
        & "Not all of them are equal."
      );
   Previous_Period_Position : Natural := 1;
   Current_Period_Position  : Natural := 0;
begin
   loop
      Current_Period_Position := Index(Source, ".", Previous_Period_Position);
      
      Put_Line(
         Unbounded_Slice(Source, Previous_Period_Position, Current_Period_Position)
      );
      
      Previous_Period_Position := Current_Period_Position + 1;
      exit when Current_Period_Position = 0;
   end loop;
end Search_Strings;
