
def bubble_sort(array)
  n = array.length
  return array if n == 1
  
  loop do
    swapped = false
    (0...(n - 1)).each do |j|
      if array[j] > array[j+1]
        array[j], array[j + 1] = array[j + 1], array[j]
        swapped = true
      end
    end
    break unless swapped
    n -= 1
  end
  array
end

puts bubble_sort([9,8,7,6,5,4,3,2,1,0])