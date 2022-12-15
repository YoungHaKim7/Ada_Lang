with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
begin
    for I in 1 .. 10 loop
        Put_Line (case I is
                when 1 | 3 | 5 | 7 | 9 => "Odd",
                when 2 | 4 | 6 | 8 | 10 => "Even");
    end loop;
end Main;
