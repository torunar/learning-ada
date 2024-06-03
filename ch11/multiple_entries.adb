with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Multiple_Entries is
   task type Double_Task is
      entry Set_Input(Input : in Natural);
      entry Flush_Output(Output : out Natural);
   end Double_Task;
   
   task body Double_Task is
      Output_Value : Natural := 0;
   begin
      Task_Loop:
      loop
         accept Set_Input(Input : in Natural) do
            Output_Value := Input * 2;
         end Set_Input;
         
         accept Flush_Output(Output : out Natural) do
            Output := Output_Value;
         end Flush_Output;
      end loop Task_Loop;
   end Double_Task;
   
   Value : Natural := 10;
   Doubler : Double_Task;
begin
   Doubler.Set_Input(10);
   Doubler.Flush_Output(Value);
   Put_Line(Natural'Image(Value));
   
   Doubler.Set_Input(Value);
   Doubler.Flush_Output(Value);
   Put(Natural'Image(Value));
exception
   when others => Put_Line("the task is broken");
end Multiple_Entries;
