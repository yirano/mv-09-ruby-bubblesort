def bubble_sort (array)

  n = array.length

  loop do

    swaped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swaped = true
      end
    end

    break if not swaped

  end 

  array

end

array = [3, 7, 1, 9, 2, 8]
print bubble_sort (array)