with Ada.Text_IO;
use Ada.Text_IO;


procedure bubblesort is
    --  defining a type of element for the programme
    type My_Int is range 0 .. 1000;
    -- the variable index is going to be be used as the bounds of the arar
    type size is range 1 .. 10;

    end_sort : Integer  := 10;
    beginning_sort : Integer := 0;

    type  myArray is array (size) of My_Int;
    -- intitialising an array of 10 elements in reverse order
    Arr : myArray := (10, 9, 8, 7, 6, 5, 4, 3, 2, 1);

procedure swap(firstValue : Integer; endValue : in Integer; inArray : inArray) is 
begin
    Put_Line ("say hello");
end swap;


begin 

    for ii in Integer range beginning_sort .. end_sort loop
        for jj in Integer range beginning_sort .. end_sort - 1 loop
            swap(10, 20);
        end loop;

    end loop;

end bubblesort;
