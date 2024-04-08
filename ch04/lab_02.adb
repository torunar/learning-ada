with Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;

procedure Lab_02 is
  function Is_Palindrome
    (Checked_String : in Ada.Strings.Unbounded.Unbounded_String)
    return Boolean is
    String_Length : Positive := Ada.Strings.Unbounded.Length(Checked_String);
    Middle_Of_String : Positive := String_Length / 2;
  begin
    if (String_Length = 1) then
      return True;
    end if;
    
    for Index in 1 .. Middle_Of_String loop
      if Ada.Strings.Unbounded.Element(Checked_String, Index) /= Ada.Strings.Unbounded.Element(Checked_String, String_Length - Index + 1) then
        return False;
      end if;
    end loop;
    
    return True;
  end Is_Palindrome;
  
  function Read_String_From_Input
    return Ada.Strings.Unbounded.Unbounded_String is
  begin
    Ada.Text_IO.Put("Input string to check: ");

    return Ada.Text_IO.Unbounded_IO.Get_Line;
  end Read_String_From_Input;
  
  User_String : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("");
begin
  User_String := Read_String_From_Input;
  
  Ada.Text_IO.Put_Line(Boolean'Image(
    Is_Palindrome(User_String)
  ));
end Lab_02;
