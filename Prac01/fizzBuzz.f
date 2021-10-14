* AUTHOR: Tawana David Kwaramba
* DATE: 14/10/21
* PURPOSE: This is going to be the implementation of the fizz buzz alogorithm
* in the programmning language FORTRAN. The fizz buzz game is going to be where
* the programme is going to count from 1 to a pre-selected number, and for any
* number divisible by 3 the programme is going to output fizz, a numbe which is
* going to be divisbile by 5 the programme is going to output buzz, and any
* number which is going to be divisible by 15 the programme is going to output
* fizzbuzz
      program fizzBuzz
      integer times, ii

      write (*,*) 'Enter amount of times you want to run fizz buzz: '
      read (*,*) times
      write (*,*) 'times running fizz buzz algorithm: ', times
      ii = 0

      do while (ii < times)
      ii = ii + 1

*starting off with the number 15 as that is going to be the biggest number,
*and it's going to short circuit the lower numbers. 15 is going to be divisible
*with less things than 3 and 5
      if (mod(ii,15) == 0) then
       print *, 'fizz buzz'
      
      else if (mod(ii,5) == 0) then
       print  *, 'buzz'

      else if (mod(ii,3) == 0) then
       print *, 'fizz'

      else
        print *, ii
      endif

      end do

      stop
      end

