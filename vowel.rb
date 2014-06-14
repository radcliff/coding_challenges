# Vowel Count: Using Ruby, have the function VowelCount(str) take the str string parameter being passed 
# and return the number of vowels the string contains (ie. "All cows eat grass" would return 5). 
# Do not count y as a vowel for this challenge.

def vowel_count(string)
  vowels = ["a", "e", "i", "o", "u"]
  array = string.downcase.chars
  count = 0
  
  array.each do |char|
    vowels.each do |vowel|
      if vowel == char
        count += 1
      end
    end
  end
  return count
end