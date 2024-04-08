with Ada.Text_IO;
with Ada.Strings.Unbounded;

procedure Records_Array is
  type Car_Maintenance is record
    Action : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("");
    Cost   : Float                                  := 0.0;
  end record;
  
  Maintenance_Ledger : array (1..10) of Car_Maintenance;
begin
  for Index in Maintenance_Ledger'Range loop    
    Maintenance_Ledger(Index).Action := Ada.Strings.Unbounded.To_Unbounded_String("Maintenance #" & Positive'Image(Index));
    Maintenance_Ledger(Index).Cost := Float(Index) * 100.00;
  end loop;
end Records_Array;
