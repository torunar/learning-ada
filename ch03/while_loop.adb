with Ada.Text_IO;

procedure While_Loop is
  Age : Natural := 0;
  IsOld : Boolean := False;
begin
  while not IsOld loop
    Age := Age + 1;
    IsOld := Age = 30;
    
    if IsOld
    then
      exit;
    end if;
    
    Ada.Text_IO.Put_Line(
      "You are just " 
      & Integer'Image(Age)
      & ", you're not old yet"
    );
  end loop;
  
  Ada.Text_IO.Put_Line(
      "Now you are old"
    );
end While_Loop;
