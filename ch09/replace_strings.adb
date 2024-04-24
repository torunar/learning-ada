with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Replace_Strings is
--                                                   12345678911111111112222
--                                                            01234567890123
   Source : Unbounded_String := To_Unbounded_String("sample text with spaces");
begin
   Put_Line(Insert(
     Source => Source,
     Before => 1,
     New_Item => "* "
   ));
   Put_Line(Delete(
     Source => Source,
     From => 7,
     Through => 11
   ));
   Put_Line(Overwrite(
     Source => Source,
     Position => 8,
     New_Item => "stub"
   ));
   Put_Line(Replace_Slice(
     Source => Source,
     Low => 8,
     High => 11,
     By => "pamphlet"
   ));
end Replace_Strings;
 
