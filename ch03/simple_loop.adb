with Ada.Text_IO;
use Ada.Text_IO;

procedure Simple_Loop is
  Counter : Natural := 0;
begin
  loop
    delay 1.0;
    Counter := Counter + 1;
    Put_Line(Natural'Image(Counter));
    exit when Counter = 10;
  end loop;
end Simple_Loop;
