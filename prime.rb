# Prime numbers: Print out the prime numbers between 1 and 100.

def prime_numbers_between_1_and_100
  number = 1
  i = 1
  count = 0

  until number == 100  
    unless number % 2 == 0
      while i <= number
        if number % i == 0
          count += 1
        end
        i += 1
      end
      if count > 0
        puts number
      end
      count = 0
    end
    number += 1
  end
end