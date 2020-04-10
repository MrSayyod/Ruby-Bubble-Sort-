def bubble_sort(array)
  switch = true
  n = array.length
  while switch 
    switch = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        switch = true
      end
      end
  end
  array
end

puts bubble_sort([1, 5, 9, 654, 23, 7, 3])


