with Ada.Text_IO;
use Ada.Text_IO;


procedure bubblesort is
    end_sort : Integer  := 10;
    beginning_sort : Integer := 0;

    type  myArray is array (0 .. 10) of Integer;
    type myArray_access is access  myArray;

    -- intitialising an array of 10 elements in reverse order
    myArray_access : myArray_access; 
    elements : myArray := (11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1);

procedure swap(index : Integer; inArray : in myArray) is
    temp : Integer;
begin
    temp := inArray(index);
    inArray(index) := inArray(index + 1);
    inArray(index + 1 ) := temp;
end swap;


begin 
    swap(1, elements);
    for ii in Integer range beginning_sort .. end_sort loop
        for jj in Integer range beginning_sort .. end_sort - 1 loop
            Put_Line("hello nigger");
        end loop;

    end loop;
end bubblesort;
