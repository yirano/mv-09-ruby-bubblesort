def bubble_sort (array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end 
  array
end

def bubble_sort_by(arr)
  cont = true
  while cont
    for i in 0...arr.length-1
      if yield([arr[i], arr[i+1]]) > 0
          arr[i], arr[i+1] = arr[i+1], arr[i]
      else
          cont = false
      end
    end
  end
  arr
end


# Tests
array = [3, 7, 1, 9, 2, 8]
p bubble_sort(array)

ans = bubble_sort_by(['hi', 'bye', 'THE WORLD']) do |a, b|
  a.length - b.length
end
p ans



