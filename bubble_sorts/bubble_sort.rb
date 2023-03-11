def bubble_sort(arr)
  (arr.length).times do |i|
    ((arr.length) -1 -i).times do |j|
      if arr[j] > arr[j + 1]
        tmp = arr[j]
        arr[j] = arr[j + 1]
        arr[j+1] = tmp
      end
    end
  end
end
