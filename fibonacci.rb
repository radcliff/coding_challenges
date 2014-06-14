# Fibonnaci: Write a method to return the Nth number of Fibonacci sequence.

def fib(n)
  if n == 0 || n == 1
    return 1
  elsif n > 1
   number = fib(n - 1) + fib(n -2)
  end
  return number
end