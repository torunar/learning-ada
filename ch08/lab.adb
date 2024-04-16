with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;
with Ada.Strings.Fixed;

procedure Lab is
  function Get_Response_From_User
    (Message: String;
     Default_Response: String)
    return Ada.Strings.Unbounded.Unbounded_String is
    User_Response : Ada.Strings.Unbounded.Unbounded_String;
  begin
    Ada.Text_IO.Put_Line(Message);
    Ada.Text_IO.Put("> [" & Default_Response & "] ");
    
    User_Response := Ada.Text_IO.Unbounded_IO.Get_Line;
    if (Ada.Strings.Unbounded.Length(User_Response) > 0) then
      return User_Response;
    end if;
    
    return Ada.Strings.Unbounded.To_Unbounded_String(Default_Response);
  end Get_Response_From_User;
  
  function Get_Numbered_Line
    (Number : in Natural;
     Line   : in String)
    return Ada.Strings.Unbounded.Unbounded_String is
    Buffer : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("");
  begin
    Ada.Strings.Unbounded.Append(Buffer, Ada.Strings.Fixed.Tail(Natural'Image(Number), 4));
    Ada.Strings.Unbounded.Append(Buffer, ' ');
    Ada.Strings.Unbounded.Append(Buffer, Line);
    
    return Buffer;
  end Get_Numbered_Line;
  
  Line_Number  : Natural                                := 0;
  In_Filename  : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.Null_Unbounded_String;
  Out_Filename : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.Null_Unbounded_String;
  In_File      : Ada.Text_IO.File_Type;
  Out_File     : Ada.Text_IO.File_Type;
begin
  In_Filename  := Get_Response_From_User("Path to file to read from", "/tmp/in");
  Out_Filename := Get_Response_From_User("Path to file to write to", "/tmp/out");
  
  Ada.Text_IO.Open(
    File => In_File,
    Mode => Ada.Text_IO.In_File,
    Name => Ada.Strings.Unbounded.To_String(In_Filename)
  );
  
  Ada.Text_IO.Create(
    File => Out_File,
    Mode => Ada.Text_IO.Out_File,
    Name => Ada.Strings.Unbounded.To_String(Out_Filename)
  );
  
  while not Ada.Text_IO.End_Of_File(In_File) loop
    declare
      Line : String := Ada.Text_IO.Get_Line(In_File);
    begin
      Line_Number := Line_Number + 1;
      Ada.Text_IO.Unbounded_IO.Put_Line(
        File => Out_File,
        Item => Get_Numbered_Line(Line_Number, Line)
      );
    end;
  end loop;
  
  Ada.Text_IO.Close(In_File);
  Ada.Text_IO.Close(Out_File);
end Lab;
