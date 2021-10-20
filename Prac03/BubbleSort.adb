with Ada.Text_IO;
use Ada.Text_IO;


procedure BubbleSort is 
    --  defining an unconstrained array of integers
    --type arrayOfIntegers is Array  (Natural range <>) of Integer;
    type arrayOfIntegers is Array (0 .. 10) of Integer;
    elements : arrayOfIntegers := (15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5);

    procedure bubbleSort (arrayToSort : in out arrayOfIntegers) is
        -- the value which is going to be used a place holder when we're going to 
        -- be switching the elements of an array around
        temp : Integer;

        begin 
            for ii in reverse arrayToSort'Range loop
                for jj in arrayToSort'First .. ii loop
                    if arrayToSort(ii) < arrayToSort(jj) then
                        -- actually swapping the elements around in the array
                        temp := arrayToSort(jj);
                        arrayToSort(jj) := arrayToSort(ii);
                        arrayToSort(ii) := temp;
                    end if;
                end loop;
            end loop;
        end bubblesort;

    procedure printArrayValues(sortedArray : in out arrayOfIntegers) is
        begin
            for ii in sortedArray'Range  loop
                Put(Integer'Image(sortedArray(ii)));
            end loop;
            Put_Line(" ");
        end printArrayValues;


begin 
    -- I am treating this a main method where yo're actually going to run the
    -- programme
    Put_Line("Before bubble sort: ");
    printArrayValues(elements);

    bubbleSort(elements);
    Put_Line("After the bubble sort: ");
    printArrayValues(elements);
end BubbleSort;

