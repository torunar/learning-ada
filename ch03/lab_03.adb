with Ada.Text_IO;
use Ada.Text_IO;

procedure Lab_03 is
begin
  for Val in 1 .. 10_000 loop
    if (
      Val rem 3 = 0
      or Val rem 13 = 0
      or Val rem 23 = 0
    )
    then
      Put(Positive'Image(Val));
    end if;
  end loop;
end Lab_03;
