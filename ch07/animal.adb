with Ada.Text_IO;

package body Animal is
  function Init
    (Name: in String;
     Legs: in Natural)
    return Creature is
    Result : Creature;
  begin
    Result.Name := Ada.Strings.Unbounded.To_Unbounded_String(Name);
    Result.Legs := Legs;
    return Result;
  end Init;
    
  function Init
    return Creature is
  begin
    return Init("<unknown>", 0);
  end Init;
  
  procedure Print
    (Item : in Creature) is
  begin
    Debug(Item);
  end Print;
  
  function Get_Legs
    (Item: in Creature)
    return Natural is
  begin
    return Item.Legs;
  end Get_Legs;
  
  procedure Set_Legs
    (Item : in out Creature;
     Legs: in Natural) is
  begin
    if (Legs > 4) then
      raise Wrong_Leg_Amount_Exception;
    end if;
    
    Item.Legs := Legs;
  end Set_Legs;
     
  function Get_Name
    (Item: in Creature)
    return String is
  begin
    return Ada.Strings.Unbounded.To_String(Item.Name);
  end Get_Name;
     
  procedure Set_Name
    (Item : in out Creature;
     Name: in String) is
  begin
    Item.Name := Ada.Strings.Unbounded.To_Unbounded_String(Name);
  end Set_Name;
  
  procedure Debug
    (Item: in Creature) is
  begin
    Ada.Text_IO.Put_Line(
      Ada.Strings.Unbounded.To_String(Item.Name) & ":" &
        Natural'Image(Item.Legs)
    );
  end Debug;
  
  overriding procedure Finalize
    (Item: in out Creature) is
  begin
    Item.Name := Ada.Strings.Unbounded.Null_Unbounded_String;
    Item.Legs := Natural'First;
  end Finalize;
end Animal;
