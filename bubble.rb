def bubble_sort(array)
  switch = true
  n = array.length
  while switch
    switch = false
    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        switch = true
      end
    end
  end
  array
end

print bubble_sort([1, 5, 9, 654, 23, 7, 3])
puts ''

def bubble_sort_by(array)
  switch = true
  n = array.length
  while switch
    switch = false
    (n - 1).times do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        switch = true
      end
    end
  end
  array
end

sort_by = bubble_sort_by(%w[hi hello hey halloween honeymoon]) do |left, right|
  left.length - right.length
end

print sort_by
