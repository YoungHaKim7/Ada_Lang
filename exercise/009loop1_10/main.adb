with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
begin
    for I in 1 .. 10 loop
        Put_Line (if I mod 2 = 0 then "Enven" else "Odd");
    end loop;
end Main;
