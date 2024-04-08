with Ada.Text_IO;

procedure Simple_Array is
  Int_Array : array (1 .. 20) of Integer := (1 => 1, 2 => 2, 3 => 3, others => 0);
begin
  for Index in Int_Array'Range loop
    Ada.Text_IO.Put_Line(Integer'Image(Int_Array(Index)));
  end loop;
end Simple_Array;
