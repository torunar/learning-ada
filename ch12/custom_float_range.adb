with Ada.Text_IO;

procedure Custom_Float_Range is
   type Custom_Float is delta 0.1 range 0.0 .. 10.0;
   
   Valid_Value                  : Custom_Float := 0.0;
   Value_With_Limited_Precision : Custom_Float := 0.123456;
--   Value_Outside_Of_Range       : Custom_Float := 11.0;
begin
   Ada.Text_IO.Put_Line(Custom_Float'Image(Valid_Value));
   Ada.Text_IO.Put_Line(Custom_Float'Image(Value_With_Limited_Precision));
   Ada.Text_IO.Put_Line(Boolean'Image(Value_With_Limited_Precision = 0.1));
end Custom_Float_Range;
