with Ada.Text_IO;         use Ada.Text_IO;

procedure Main is
    X : Integer;
begin
    x := 0;
    Put_Line ("The initial value of X is "
                & Integer'Image (X));

    Put_Line ("Performing peration on X...");
    X := X + 1;

    Put_Line ("The value of X now is "
                & Integer'Image (X));
end Main;
