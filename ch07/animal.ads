with Ada.Finalization;
with Ada.Strings.Unbounded;

package Animal is
  type Creature is new Ada.Finalization.Controlled with private;
  
  Wrong_Leg_Amount_Exception : exception;
  
  function Init
    (Name: in String;
     Legs: in Natural)
    return Creature;
    
  function Init 
    return Creature;
  
  procedure Print
    (Item : in Creature);
  
  function Get_Legs
    (Item: in Creature)
    return Natural;
  
  procedure Set_Legs
    (Item : in out Creature;
     Legs: in Natural);
     
  function Get_Name
    (Item: in Creature)
    return String;
     
  procedure Set_Name
    (Item : in out Creature;
     Name: in String);
  
private
  type Creature is new Ada.Finalization.Controlled with record
    Name : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.Null_Unbounded_String;
    Legs : Natural                                := 0;
  end record;
  
  procedure Debug
    (Item: in Creature);
  
  overriding procedure Finalize
    (Item: in out Creature);
end Animal;
