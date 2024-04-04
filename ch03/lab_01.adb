with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;

procedure Lab_01 is
  subtype Decimal is Positive range 1 .. 10;
  package Random_1_10 is new Ada.Numerics.Discrete_Random(Decimal);
  
  UserNumberInputBuffer : String(1 .. 2);
  UserNumberLength : Natural := 0;
  UserNumber : Decimal := 1;
  
  RNG : Random_1_10.Generator;
  RandomNumber : Decimal := 1;
begin
  Put_Line(
    "I think about number between" 
    & Decimal'Image(Decimal'First)
    & " and"
    & Decimal'Image(Decimal'Last)
    & ". Guess it!"
  );
  Put("> ");
  -- read value from the input
  Get_Line(UserNumberInputBuffer, UserNumberLength);
  -- convert it to value
  UserNumber := Decimal'Value(UserNumberInputBuffer(1 .. UserNumberLength));
  -- reset RNG
  Random_1_10.Reset(RNG);
  -- generate random number
  RandomNumber := Random_1_10.Random(RNG);
  
  if RandomNumber = UserNumber
  then
    Put_Line("You guessed right");
  else
    Put_Line("Wrong! My number is" & Decimal'Image(RandomNumber));
  end if;
end Lab_01;
