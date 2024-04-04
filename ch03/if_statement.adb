with Ada.Text_IO;

procedure If_Statement is
  type Weekday is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
  Today : Weekday := Thursday;
begin
  if 90 in 0 .. 89
  then
    Ada.Text_IO.Put_Line("is in range");
  end if;
  
  if Today in Monday .. Friday
  then
    Ada.Text_IO.Put_Line("is work day")
  end if;
end If_Statement;
