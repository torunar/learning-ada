with Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;

procedure Lab_03 is
  function Is_Palindrome
    (Checked_String : in Ada.Strings.Unbounded.Unbounded_String)
    return Boolean is
    String_Length : Natural := Ada.Strings.Unbounded.Length(Checked_String);
  begin
    if (String_Length <= 2) then
      return Ada.Strings.Unbounded.Element(Checked_String, 1) = Ada.Strings.Unbounded.Element(Checked_String, String_Length);
    end if;
    
    if (Ada.Strings.Unbounded.Element(Checked_String, 1) /= Ada.Strings.Unbounded.Element(Checked_String, String_Length)) then
      return False;
    end if;
    
    return Is_Palindrome(Ada.Strings.Unbounded.Unbounded_Slice(Checked_String, 2, String_Length - 1));
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
end Lab_03;
