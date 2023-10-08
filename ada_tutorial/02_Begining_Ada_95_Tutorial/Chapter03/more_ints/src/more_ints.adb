with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure More_Ints is
  Index_1                   : Integer;
  Index_2, Index_3, Index_4 : Integer;
  Cat                       : Integer := 12;
  Dog                       : Integer := -5;
  Pig, Hog, Sow             : Integer := 1_000;

begin
  Index_1 := Cat + 4;
  Index_2 := Dog - 3;
  Index_3 := Pig * 7;
  Index_4 := Pig / 300;
  Put ("Index_1 = ");
  Put (Index_1);
  New_Line;
  Put ("Index_2 = ");
  Put (Index_2);
  New_Line;
  Put ("Index_3 = ");
  Put (Index_3);
  New_Line;
  Put ("Index_4 = ");
  Put (Index_4);
  New_Line (2);

  Index_1 := 5 * Cat - Pig / 4;
  Index_2 := (5 * Cat) - (Pig / 4);
  Index_3 := Pig mod 3;
  Index_4 := Pig rem 3;
  Put ("Index_1 = ");
  Put (Index_1);
  New_Line;
  Put ("Index_2 = ");
  Put (Index_2);
  New_Line;
  Put ("Index_3 = ");
  Put (Index_3);
  New_Line;
  Put ("Index_4 = ");
  Put (Index_4);
  New_Line (2);

  Index_1 := abs (Dog);
  Index_2 := Cat**3;
  Index_3 := (Cat - 5)**(abs (Dog) - 2);
  Index_4 := -Index_3;
  Put ("Index_1 = ");
  Put (Index_1);
  New_Line;
  Put ("Index_2 = ");
  Put (Index_2);
  New_Line;
  Put ("Index_3 = ");
  Put (Index_3);
  New_Line;
  Put ("Index_4 = ");
  Put (Index_4);
  New_Line (2);

end More_Ints;
