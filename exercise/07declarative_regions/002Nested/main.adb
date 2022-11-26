with Ada.Text_IO;         use Ada.Text_IO;

procedure Main is
    procedure Nested is
    begin
    Put_Line ("Hello World");
    end Nested;
begin
    Nested;
    -- Call to Nested
end Main;
