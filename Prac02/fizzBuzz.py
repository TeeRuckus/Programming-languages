
#PURPOSE:
#this is going to be pretty much a programme which is going to teach kids their
#dvision. So you will put a number which is going to be divisible by three inside
#the wrod fizz, and any number which is going to be divisible by five in the 
#word buzz
#SPECIFICATIONS OF THE PROGRAMME 
# -so you will need to start at the number one
#then you're going to count up from their
# any number which is going to be divisible by three is going to be replace by 
#the word fizz, and any number which is going to be divisible by 5 is going to
# be replace with word buzz 
#then any number which is going to be divisible by 15 is going to be replaced with
#the word fizzbuzz
    # 5 = buzz 
    # 3 = fizz
    # 15 = fizz buzz


def main():
    times = input("Enter how much you want to play fizz buzz: ")
    fizzBuzz(times)

def fizzBuzz(times):
    #humans don't start counting at the number of zero hence, we will need to
    #to offset the counting to actually start at one
    times = int(times)
    for ii in range(1, times+1):

        #going to be checking if it's going to be divisible by 15 as that is
        #going to be the highest number and we don't want the other lower numbers
        #to short circuit the algorithm
        if (ii % 15) == 0:
            print("Fizz buzz")
        elif (ii % 5) == 0:
            print("buzz")
        elif (ii % 3) == 0:
            print("fizz")
        else:
            print(ii)


if __name__ == "__main__":
    main()
