with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random;
with Ada.Integer_Text_IO;

procedure Task_Example is
   subtype Byte is Natural range 0 .. 1;

   function Get_Random_Delay return Duration is
      RNG : Ada.Numerics.Float_Random.Generator;
   begin
      Ada.Numerics.Float_Random.Reset(RNG);
      return Duration(Ada.Numerics.Float_Random.Random(RNG));
   end Get_Random_Delay;
   
   task type Test_Task(Output: Byte);
   task body Test_Task is
   begin
      for Index in 0 .. 20 loop
         Ada.Integer_Text_IO.Put(Output, Width => 1);
         delay Get_Random_Delay;
      end loop;
   end Test_Task;
   
   Debug_Task         : Test_Task(Output => 0);
   Another_Debug_Task : Test_Task(Output => 1);
begin
   null;
end Task_Example;
