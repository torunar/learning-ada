with Ada.Text_IO;
use Ada.Text_IO;

procedure For_Loop is
begin
  for Age in 15 .. 29 loop
    Put_Line(
      "You are"
      & Integer'Image(Age)
      & " and you are still young"
    );
  end loop;
  Put_Line("And then you're old");
  New_Line;
  
  for NumberOfYachts in reverse 1 .. 5 loop
    Put_Line(
      "You have"
      & Integer'Image(NumberOfYachts)
      & " yacht(s) and you are rich"
    );
  end loop;
  Put_Line("And then you're poor");
end For_Loop;
