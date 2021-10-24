#!/usr/bin/gprolog --consult-file
    getFizzBuzz(IN_NUM) :-
    IN_NUM mod 15 =:= 0, write('Fizz buzz'),nl;
    IN_NUM mod 5 =:= 0, write('fizz'), nl;
    IN_NUM mod 3 =:= 0, write('buzz'),nl;
    write(IN_NUM), nl.

    fizzbuzz :-
        forall(between(1,1000, CURR_NUM), getFizzBuzz(CURR_NUM)),
        halt.

    :- initialization(fizzbuzz).
