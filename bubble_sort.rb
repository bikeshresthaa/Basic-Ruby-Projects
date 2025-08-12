
def bubble_sort(array)
  
  return array if array.length == 1
  
  i = 0
  while i < array.length
    swapped = false
    j = 0
    
    while j < array.length - i - 1
      if array[j] > array[j+1]
        array[j], array[j + 1] = array[j + 1], array[j]
        swapped = true
      end
      j += 1
    end
    break unless swapped
    i += 1
    
  end
  array
end


print bubble_sort([9,8,7,6,5,4,3,2,1,0])