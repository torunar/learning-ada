with Ada.Text_IO;

procedure Complex_Array is
  Int_Array : array (1 .. 3, 1 .. 3) of Integer := (others => (others => 0));
begin
  for I in Int_Array'Range(1) loop
    for J in Int_Array'Range(2) loop
      Int_Array(I, J) := I * J;
      Ada.Text_IO.Put(Integer'Image(Int_Array(I, J)));
    end loop;
    Ada.Text_IO.New_Line;
  end loop;
end Complex_Array;
