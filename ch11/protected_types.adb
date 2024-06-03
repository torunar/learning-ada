with Ada.Text_IO; use Ada.Text_IO;

procedure Protected_Types is
   type Protected_Value_State is (Awaits_Write, Awaits_Read);

   protected type Protected_Value is
      entry Write(Value : in Integer);
      entry Read(Value : out Integer);
   private
      Internal_Value : Integer               := 0;
      Internal_State : Protected_Value_State := Awaits_Write;
   end Protected_Value;
   
   protected body Protected_Value is
      entry Write(Value : in Integer) 
         when Internal_State = Awaits_Write is
      begin
         Internal_Value := Value;
         Internal_State := Awaits_Read;
      end Write;
      
      entry Read(Value : out Integer)
         when Internal_State = Awaits_Read is
      begin
         Value := Internal_Value;
         Internal_State := Awaits_Write;
      end Read;
   end Protected_Value;
   
   Shared_Resource : Protected_Value;
   
   task type Access_Shared_Value(Id : Integer) is
      entry Write(Value : in Integer);
      entry Read;
      entry Stop;
   end Access_Shared_Value;
   
   task body Access_Shared_Value is
      Task_Specific_Read_Value : Integer := 0;
   begin      
      Task_Loop:
      loop
         select
            accept Write(Value : in Integer) do
               Shared_Resource.Write(Value);
               Put_Line("[Task " & Integer'Image(Id) & "] Written. Reading locked for 2 seconds");
               delay 2.0;
            end Write;
         or
            accept Read do
               Shared_Resource.Read(Task_Specific_Read_Value);
               Put_Line("[Task " & Integer'Image(Id) & "] " & Integer'Image(Task_Specific_Read_Value));
            end Read;
         or
            accept Stop;
            exit Task_Loop;
         end select;
      end loop Task_Loop;
   end Access_Shared_Value;
   
   Task_01 : Access_Shared_Value(Id => 1001);
   Task_02 : Access_Shared_Value(Id => 10002);
begin
   Put_Line("Start program");
   
   Task_01.Write(10);
   Task_02.Read;
   
   Task_02.Write(20);
   Task_01.Read;
   
   Task_01.Stop;
   Task_02.Stop;
end Protected_Types;
