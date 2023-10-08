with Ada.Text_IO; use Ada.Text_IO;

procedure A01_Learn is
  subtype Alphabet is Character range 'A' .. 'Z';
begin
  Put_Line ("Learning Ada from " & Alphabet'First & " to " & Alphabet'Last);
end A01_Learn;
