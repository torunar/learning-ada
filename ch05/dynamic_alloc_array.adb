with Ada.Text_IO;
with Ada.Numerics.Discrete_Random;

procedure Dynamic_Alloc_Array is
  subtype Random_Natural is Natural range 0 .. 100;
  type Dynamic_Natural_Array is array (Positive range <>) of Random_Natural;
  package Natural_Random is new Ada.Numerics.Discrete_Random(Random_Natural);
  RNG : Natural_Random.Generator;
begin
  Natural_Random.Reset(RNG);
  declare 
    Random_Natural_Array : Dynamic_Natural_Array(1 .. 10);
  begin
    for Index in 1 .. 10 loop
      Random_Natural_Array(Index) := Natural_Random.Random(RNG);
      Ada.Text_IO.Put_Line(Natural'Image(Random_Natural_Array(Index)));
    end loop;
  end;
end Dynamic_Alloc_Array;
