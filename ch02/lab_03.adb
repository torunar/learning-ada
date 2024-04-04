with Ada.Strings.Unbounded;
with Ada.Characters.Latin_1;
with Ada.Text_IO;

procedure lab_03 is
  Decorator : String := "###############################################################";
  OutputBuffer : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("");
begin
  Ada.Strings.Unbounded.Append(OutputBuffer, Decorator);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.CR);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.LF);
  
  Ada.Strings.Unbounded.Append(OutputBuffer, Decorator);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.CR);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.LF);
  
  Ada.Strings.Unbounded.Append(OutputBuffer, "##                                                           ##");
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.CR);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.LF);
  Ada.Strings.Unbounded.Append(OutputBuffer, "##       00000000000   0000000000    00000000000             ##");
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.CR);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.LF);
  Ada.Strings.Unbounded.Append(OutputBuffer, "##       00       00   00       00   00       00             ##");
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.CR);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.LF);
  Ada.Strings.Unbounded.Append(OutputBuffer, "##       00       00   00       00   00       00             ##");
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.CR);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.LF);
  Ada.Strings.Unbounded.Append(OutputBuffer, "##       00000000000   00       00   00000000000             ##");
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.CR);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.LF);
  Ada.Strings.Unbounded.Append(OutputBuffer, "##       00       00   00       00   00       00             ##");
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.CR);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.LF);
  Ada.Strings.Unbounded.Append(OutputBuffer, "##       00       00   00       00   00       00             ##");
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.CR);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.LF);
  Ada.Strings.Unbounded.Append(OutputBuffer, "##       00       00   0000000000    00       00             ##");
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.CR);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.LF);
  Ada.Strings.Unbounded.Append(OutputBuffer, "##                                                           ##");
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.CR);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.LF);
  
  Ada.Strings.Unbounded.Append(OutputBuffer, Decorator);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.CR);
  Ada.Strings.Unbounded.Append(OutputBuffer, Ada.Characters.Latin_1.LF);
  
  Ada.Strings.Unbounded.Append(OutputBuffer, Decorator);
  
  Ada.Text_IO.Put_Line(
    Ada.Strings.Unbounded.To_String(OutputBuffer)
  );
end lab_03;
