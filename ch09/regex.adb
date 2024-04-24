with Ada.Text_IO; use Ada.Text_IO;
with GNAT.Regpat;

procedure Regex is
   Pattern : constant String := "([0-9]{1})([0-9]{1})([0-9]{1})([0-9]{1})([0-9]{1})";
   Source : String := "This text has numbers like 12, 46, 98712 and even 0. You are welcome to play with all of them.";
   Regpat_Matcher : GNAT.Regpat.Pattern_Matcher := GNAT.Regpat.Compile(Pattern);
   Result : GNAT.Regpat.Match_Array(0 .. 5);
begin
   GNAT.Regpat.Match(Regpat_Matcher, Source, Result);
   if not GNAT.Regpat."="(Result(1), GNAT.Regpat.No_Match) then
      for Index in 0 .. 5 loop
         Put_Line(
            "matchin group"
              & Natural'Image(Index)
              & ": "
              & Source(Result(Index).First .. Result(Index).Last)
         );
      end loop;
   end if;
end Regex;
