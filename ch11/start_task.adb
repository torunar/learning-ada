with Ada.Text_IO; use Ada.Text_IO;

procedure Start_Task is
   task type Double_Task(Id : Natural) is
      entry Start;
   end Double_Task;
   
   task body Double_Task is
      Output_Value : Natural := 0;
   begin
      Output_Value := Id * 2;
      Put_Line(
         "I'm prepared to output double value of" &
           Natural'Image(Id)
     );
      
      accept Start;
      Put_Line(Natural'Image(Output_Value));
   end Double_Task;
   
   T_1 : Double_Task(11);
   T_2 : Double_Task(2);
begin
   delay 1.0;
   T_1.Start;
   
   delay 1.0;
   T_2.Start;
end Start_Task;
