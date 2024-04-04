with Ada.Text_IO;
with Ada.Strings.Unbounded;

procedure unbounded_strings is
  HelloPart : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("Hello,");
  WorldPart : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("world!");
  HelloWorld: Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("");
begin
  Ada.Strings.Unbounded.Append(HelloWorld, HelloPart);
  Ada.Strings.Unbounded.Append(HelloWorld, " ");
  Ada.Strings.Unbounded.Append(HelloWorld, WorldPart);
  
  Ada.Text_IO.Put_Line(Ada.Strings.Unbounded.To_String(HelloWorld));
  Ada.Text_IO.Put_Line(Integer'Image(Ada.Strings.Unbounded.Length(HelloWorld)));
end unbounded_strings;
