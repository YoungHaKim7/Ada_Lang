with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Linklist is
  Data_String : constant String := "This tests ADA";

  type CHAR_REC;                 -- Incomplete declaration

  type CHAR_REC_POINT is access CHAR_REC;

  type CHAR_REC is               -- Complete declaration
  record
    One_Letter : Character;
    Next_Rec   : CHAR_REC_POINT;
  end record;

  Start : CHAR_REC_POINT;        -- Always points to start of list
  Last  : CHAR_REC_POINT;        -- Points to the end of the list

  procedure Traverse_List (Starting_Point : CHAR_REC_POINT) is
    Temp : CHAR_REC_POINT;         -- Moves through the list
  begin
    Put ("In traverse routine.  --->");
    Temp := Starting_Point;
    if Temp = null then
      Put ("No data in list.");
    else
      loop
        Put (Temp.One_Letter);
        Temp := Temp.Next_Rec;
        if Temp = null then
          exit;
        end if;
      end loop;
    end if;
    New_Line;
  end Traverse_List;

  procedure Store_Character (In_Char : Character) is
    Temp : CHAR_REC_POINT;
  begin
    Temp            := new CHAR_REC;
    Temp.One_Letter := In_Char;    -- New record is now defined
    -- The system sets Next_Rec
    -- to the value of null
    if Start = null then
      Start := Temp;
      Last  := Temp;
    else
      Last.Next_Rec := Temp;
      Last          := Temp;
    end if;
    Traverse_List (Start);
  end Store_Character;

begin
  -- Store the characters in Data_String in a linked list
  for Index in Data_String'Range loop
    Store_Character (Data_String (Index));
  end loop;

  -- Traverse the final list
  New_Line;
  Put_Line ("Now for the final traversal.");
  Traverse_List (Start);

  -- Free the entire list now
  loop
    exit when Start = null;
    Last           := Start.Next_Rec;
    Start.Next_Rec := null;
    Start          := Last;
  end loop;

end Linklist;

-- Result of execution

-- In traverse routine.  --->T
-- In traverse routine.  --->Th
-- In traverse routine.  --->Thi
-- In traverse routine.  --->This
-- In traverse routine.  --->This
-- In traverse routine.  --->This t
-- In traverse routine.  --->This te
-- In traverse routine.  --->This tes
-- In traverse routine.  --->This test
-- In traverse routine.  --->This tests
-- In traverse routine.  --->This tests
-- In traverse routine.  --->This tests A
-- In traverse routine.  --->This tests AD
-- In traverse routine.  --->This tests ADA
--
-- Now for the final traversal.
-- In traverse routine.  --->This tests ADA
