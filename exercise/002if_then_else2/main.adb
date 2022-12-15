with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
    N : Integer;
begin
    -- Put a String
    Put ("Enter an integer value: ");

    -- Read in an integer value
    Get (N);

    if N > 0 then
        -- Put an Integer
        Put (N);
        Put_Line (" is a positive number ");
    end if;
end Main;
