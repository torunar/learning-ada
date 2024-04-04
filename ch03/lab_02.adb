with Ada.Text_IO;
use Ada.Text_IO;

with Ada.Numerics.Discrete_Random;
procedure Lab_02 is
  subtype Random is Positive range 1 .. 100;
  package Random_1_100 is new Ada.Numerics.Discrete_Random(Random);
  RNG : Random_1_100.Generator;
  RandomNumber : Random := Random'First;
begin
  Random_1_100.Reset(RNG);
  RandomNumber := Random_1_100.Random(RNG);
    
  case RandomNumber is
    when 1 .. 10 =>
      Put_Line("[1; 10]");
    when 11 .. 20 =>
      Put_Line("[11; 20]");
    when 21 .. 30 =>
      Put_Line("[21; 30]");
    when 31 .. 40 =>
      Put_Line("[31; 40]");
    when 41 .. 50 =>
      Put_Line("[41; 50]");
    when 51 .. 60 =>
      Put_Line("[51; 60]");
    when 61 .. 70 =>
      Put_Line("[61; 70]");
    when 71 .. 80 =>
      Put_Line("[71; 80]");
    when 81 .. 90 =>
      Put_Line("[81; 90]");
    when 91 .. 100 =>
      Put_Line("[91; 100]");
  end case;
end Lab_02;
