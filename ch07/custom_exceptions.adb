with Ada.Text_IO;

procedure Custom_Exceptions is
  Conversion_Exception : exception;
  
  function Convert_Bit_To_Boolean
    (Val : in Integer)
    return Boolean is
  begin
    if (Val /= 0 and Val /= 1) then
      raise Conversion_Exception;
    end if;
    
    return Val = 1;
  end Convert_Bit_To_Boolean;
begin
  Ada.Text_IO.Put_Line(Boolean'Image(Convert_Bit_To_Boolean(1)));
  Ada.Text_IO.Put_Line(Boolean'Image(Convert_Bit_To_Boolean(0)));
  Ada.Text_IO.Put_Line(Boolean'Image(Convert_Bit_To_Boolean(-1)));
exception
  when Conversion_Exception =>
    Ada.Text_IO.Put_Line("You didn't supply a bit value");
end Custom_Exceptions;
