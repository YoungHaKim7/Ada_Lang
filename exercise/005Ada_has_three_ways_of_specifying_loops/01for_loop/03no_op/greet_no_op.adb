with Ada.Text_IO; use Ada.Text_IO;

procedure Greet_No_Op is
begin
    for I in reverse 5 .. 1 loop
        Put_Line ("Hello, World! "
                 & Integer'Image (I));
    end loop;
end Greet_No_Op;



-- $ sh ./build.sh
-- greet_no_op.adb:5:24: warning: loop range is null, loop will not execute
