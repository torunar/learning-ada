with Ada.Text_IO;

procedure lab_02 is
  A : Boolean := False;
  B : Boolean := False;
  R : Boolean := False;
begin
  A := False;
  B := False;
  R := (A or B) and (not A or not B);
  Ada.Text_IO.Put_Line(
    Boolean'Image(A)
    & " xor " 
    & Boolean'Image(B)
    & " = "
    & Boolean'Image(R)
  );
  
  A := False;
  B := True;
  R := (A or B) and (not A or not B);
  Ada.Text_IO.Put_Line(
    Boolean'Image(A)
    & " xor " 
    & Boolean'Image(B)
    & " = "
    & Boolean'Image(R)
  );
  
  A := True;
  B := False;
  R := (A or B) and (not A or not B);
  Ada.Text_IO.Put_Line(
    Boolean'Image(A)
    & " xor " 
    & Boolean'Image(B)
    & " = "
    & Boolean'Image(R)
  );
  
  A := True;
  B := True;
  R := (A or B) and (not A or not B);
  Ada.Text_IO.Put_Line(
    Boolean'Image(A)
    & " xor " 
    & Boolean'Image(B)
    & " = "
    & Boolean'Image(R)
  );
end lab_02;
