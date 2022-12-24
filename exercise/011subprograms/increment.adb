-- We declare (but don't define) a function with
-- one parameter, returning an integer value

function Increment (I: Integer) return Integer is
    -- We define the Increment function
begin
    return I + 1;
end Increment;
