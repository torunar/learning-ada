with Ada.Text_IO;
with GNAT.OS_Lib;

procedure Talk_To_OS is
  function OS_Command
    (Command   : in String;
     Arguments : in String) 
    return Natural is
      Exit_Code : Natural := 0;
      Arguments_List : GNAT.OS_Lib.Argument_List :=
        (1 => new String'(Command),
         2 => new String'(Arguments));
      File_Descriptor : GNAT.OS_Lib.File_Descriptor := GNAT.OS_Lib.Standout;
  begin
    GNAT.OS_Lib.Spawn(
      Program_Name           => Command,
      Args                   => Arguments_List,
      Output_File_Descriptor => File_Descriptor,
      Return_Code            => Exit_Code
    );
    
    return Exit_Code;
  end OS_Command;
  
  Exit_Code : Natural := 0;
begin
  Exit_Code := OS_Command(
    Command   => "/usr/bin/ls", 
    Arguments => "-lah"
  );
  Ada.Text_IO.Put_Line(Natural'Image(Exit_Code));
end Talk_To_OS;
