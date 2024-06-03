with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Task_With_Exit is
   task type Double_Task is
      entry Set_Input(Input : in Natural);
      entry Flush_Output(Output : out Natural);
      entry Stop;
   end Double_Task;
   
   task body Double_Task is
      Output_Value : Natural := 0;
   begin
      Task_Loop:
      loop
         select
            accept Set_Input(Input : in Natural) do
               Put_Line("Input set");
               Output_Value := Input * 2;
               delay 0.5;
            end Set_Input;
         or
            accept Flush_Output(Output : out Natural) do
               Output := Output_Value;
               Put_Line(Natural'Image(Output));
            end Flush_Output;
         or
            accept Stop;
            exit Task_Loop;
         else
            Put_Line("."); -- it ticks while the task lives
         end select;
      end loop Task_Loop;
   end Double_Task;
   
   Value : Natural := 10;
   Doubler : Double_Task;
begin
   Doubler.Set_Input(Value);
   Doubler.Flush_Output(Value);
   
   Doubler.Set_Input(Value);
   Doubler.Flush_Output(Value);
   
   Doubler.Set_Input(Value);
   Doubler.Flush_Output(Value);
   
   Doubler.Stop;
exception
   when others => Put_Line("the task is broken");
end Task_With_Exit;
