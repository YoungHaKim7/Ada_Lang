with Ada.Text_IO; use Ada.Text_IO;

procedure A01_Ranges is
  subtype Norm is Float range 0.0 .. 1.0;
begin
  Put_Line ("Float'First: " & Float'First'Image);
  Put_Line ("Float'Last: " & Float'Last'Image);
  Put_Line ("Norm'First: " & Norm'First'Image);
  Put_Line ("Norm'Last: " & Norm'Last'Image);
end A01_Ranges;
