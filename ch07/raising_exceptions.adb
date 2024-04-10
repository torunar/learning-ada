with Ada.Text_IO;
with Ada.Float_Text_IO;

procedure Raising_Exceptions is
  function Convert_F_To_C
    (Fahrenheit : in Float)
    return Float is
  begin
    if Fahrenheit < -459.67 then
      raise Constraint_Error;
    end if;
    
    return (Fahrenheit - 32.0) * 5.0 / 9.0;
  end Convert_F_To_C;
begin
  
  declare
  begin
    Ada.Float_Text_IO.Put(Convert_F_To_C(-500.0));
  exception
    when Constraint_Error =>
      Ada.Text_IO.Put_Line("Temperature can't be that low");
  end;
end Raising_Exceptions;
