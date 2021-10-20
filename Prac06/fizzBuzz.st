"hello world programm"
"so you will use the \\ operation to find the remainder of a number"

'Hello World' printNl !



1 to: 100 do: [ :ii | 
    "Will need to start at the highest comparison number so the lower numbers
    don't short circuit the algorithm"
    (ii \\ 15 == 0) ifTrue: [ 'Fizz Buzz' printNl ] ifFalse: 
    [ (ii \\ 5 == 0) ifTrue: ['Buzz' printNl] ifFalse:
    [ (ii \\ 3 == 0) ifTrue: ['Fizz' printNl] ifFalse:
    [ ii printNl ] ] ] 
] !



