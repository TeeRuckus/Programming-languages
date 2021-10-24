#!/usr/bin/gprolog --consult-file

%https://github.com/anglus/fizzbuzz/blob/master/prolog/gprolog/fizzbuzz_bagof.pl
%this file is going to contain facts about my current world which I am going to
%be operating in.

%run whatever is going to be found in the fizz buzz programme, and execute all
%the commands

:- initialization(fizzbuzz).

%for the fizzbuzz rule to be true, the current number has to be divisible by 
%all three value
fizzbuzzRule(currNum, fizzbuzz) :- currNum mod 15 =:= 0, currNum mod 5 =:= 0, currNum mod 3 =:= 0.

%for fizz to be true it has to be only divisible by 5 and not three, and by default
%it's going to be divisible by 15 but, that's not going to be included in here
fizzbuzzRule(currNum, fizz) :- currNum mod 5 =:= 0, currNum mod 3 =\= 0.
%for  buzz to be true it has to be only divisivle by 3 and not divisible by 3.
%by default it's not going to be divisible by 15 hence, this is going to be
%omitted

fizzbuzzRule(currNum, buzz) :- currNum mod 3 =:= 0, currNum mod 5 =\= 0.

%15 is going  to be divisible by both 5 and 3 hence, you don't need to include
%it here in your rules
fuzzbuzzRule(currNum, currNum) :- currNum mod 5 =\= 0 , currNum mod 3 =\= 0.
writeln(input) :- write(input), nl.


fizzbuzz :-
    %producing a list of 1000 numbers 
    bagof(Num,between(1,1000,Num), Numlist),
    maplist(fizzbuzzRule,NumList,returnedList),
    maplist(writeln,returnedList),
    halt.
%, nl, halt.
