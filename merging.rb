# Merging: Given two sorted arrays like the following we must merge them into one sorted array.

def merge(array_1, array_2)
  new_array = []
  i = 0

  if array_1.length > array_2.length
    length = array_1.length
  else
    length = array_2.length
  end

  until i == length
    if array_1[i] != nil
      new_array.push(array_1[i])
    end
    if array_2[i] != nil  
      new_array.push(array_2[i])
    end
    i += 1
    new_array.sort!
  end
  return new_array
end