%{
#include <stdio.h>
%}

list \[[0-9]+(,[0-9]+)*\]  

%%


{list} printf("I found a list dog\n");
\n /* ignoring end of line*/
[ \t]+ /*ignoring  white spaces */
%%

//everything above things above the percentage sign is going to be the definition
//of somethign which you can use

//after here is going to be all your subroutines and the functions which you're
//going to use with this file
