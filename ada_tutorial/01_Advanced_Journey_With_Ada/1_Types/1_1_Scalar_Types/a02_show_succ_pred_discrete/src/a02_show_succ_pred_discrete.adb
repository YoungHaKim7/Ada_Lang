with Ada.Text_IO; use Ada.Text_IO;

procedure A02_Show_Succ_Pred_Discrete is
  type State is (Idle, Started, Processing, Stopped);
  Machin_State : constant State := Started;

  I : constant Integer := 2;
begin
  Put_Line (" State                    : " & Machin_State'Image);
  Put_Line (" State'Pred (Machin_State): " & State'Pred (Machin_State)'Image);
  Put_Line (" State'Succ (Machin_State): " & State'Succ (Machin_State)'Image);
  Put_Line ("----------------------------------");
  Put_Line ("I                : " & I'Image);
  Put_Line ("Interget'Pred (I): " & Integer'Pred (I)'Image);
  Put_Line ("Integer'Succ (I) : " & Integer'Succ (I)'Image);
end A02_Show_Succ_Pred_Discrete;
