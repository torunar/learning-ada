with Ada.Text_IO;

procedure Switch_Statements is
  type Weekday is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
  Temperature : Integer := -75;
  Today : Weekday := Thursday;
begin
  case Temperature is
    when -273 ..  -80 | 60 .. 100 =>
      Ada.Text_IO.Put_Line("dead");
    when -79 .. -30 | 30 .. 59 =>
      Ada.Text_IO.Put_Line("almost dead");
    when others =>
      Ada.Text_IO.Put_Line("okay");
  end case;
  
  case Today is
    when Wednesday =>
      Ada.Text_IO.Put_Line("my dudes");
    when Friday .. Sunday =>
      Ada.Text_IO.Put_Line("party");
    when others =>
      Ada.Text_IO.Put_Line(Weekday'Image(Today));
  end case;
end Switch_Statements;
