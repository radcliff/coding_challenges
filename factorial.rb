# Factorial: Using Ruby, have the function first_factorial(num) take the num parameter being passed 
# and return the factorial of it (ie. if num = 4, return (4 * 3 * 2 * 1)). 
# For the test cases, the range will be between 1 and 18. 

def first_factorial(num)
  if num < 2
    return 1
  else
    return num * first_factorial(num - 1)
  end
end