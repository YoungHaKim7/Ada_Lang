with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure One_Int is
  Index : Integer;
begin
  Index := 23;
  Put ("the value of Index is ");
  Put (Index);
  New_Line;
  Index := Index + 12;
  Put (" The value of Index is");
  Put (Index, 8);
  New_Line;
  Put (" The value of Index is");
  Put (Index, 10);
  New_Line;
end One_Int;
