with Ada.Text_IO;              use Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;    use Ada.Strings.Unbounded;

procedure Lab is
   function Get_Response_From_User
      (Message: String;
       Default_Response: String)
      return Unbounded_String is
      User_Response : Unbounded_String;
   begin
      Ada.Text_IO.Put_Line(Message);
      Ada.Text_IO.Put("[" & Default_Response & "] > ");
    
      User_Response := Get_Line;
      if (Length(User_Response) > 0) then
         return User_Response;
      end if;
    
      return To_Unbounded_String(Default_Response);
   end Get_Response_From_User;
   
   function Count_Occurences
      (Main_String : in Unbounded_String;
       Sub_String  : in Unbounded_String)
      return Natural is
      Sub_String_As_String : String := To_String(Sub_String);
      Occurence_Index      : Natural := 0;
      Result               : Natural := 0;
   begin
      loop
         Occurence_Index := Index(Main_String, Sub_String_As_String, Occurence_Index + 1);
         
         exit when Occurence_Index = 0;
         
         Result := Result + 1;
      end loop;
      
      return Result;
   end Count_Occurences;
   
   function Remove_All_Occurences
      (Main_String : in Unbounded_String;
       Sub_String  : in Unbounded_String)
      return Unbounded_String is
      Sub_String_As_String : String           := To_String(Sub_String);
      Sub_String_Index     : Natural          := 0;
      Result               : Unbounded_String := Main_String;
   begin
      loop
         Sub_String_Index := Index(Result, Sub_String_As_String);
         
         exit when Sub_String_Index = 0;
         
         Result := Delete(Result, Sub_String_Index, Sub_String_Index + Sub_String_As_String'Length - 1);
      end loop;
      
      return Result;
   end Remove_All_Occurences;
   
   Main_String : Unbounded_String := Null_Unbounded_String;
   Sub_String  : Unbounded_String := Null_Unbounded_String;
begin
   Main_String := Get_Response_From_User("Enter main string", "Number 42 is very secret. Don't let anyone use 42.");
   Sub_String  := Get_Response_From_User("Enter sub string", "42");
   
   Put_Line(
      Natural'Image(Count_Occurences(Main_String, Sub_String)) &
        " occurence(s) found"
   );
   Put_Line(Remove_All_Occurences(Main_String, Sub_String));
end Lab;
