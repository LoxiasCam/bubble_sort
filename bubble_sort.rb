def bubble_sort(arr)
  arr_length = arr.size
  return arr if arr_length <= 1

  loop do
    swapped = false
    (arr_length - 1).times do |i|
      if ( arr[i + 1] - arr[i] < 0)
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

def bubble_sort_by(list)
  i = 0
  while i < list.length - 1 do
      comparison = yield(list[i], list[i+1])

    if comparison > 0
      list[i], list[i+1] = list[i+1], list[i]
      i = 0
    else
      i += 1
    end
  end
  print list
end

bubble_sort_by(["hi","hello", "hey"]) do |left,right|
  left.length - right.length
end

test_array = [1,2,3,4,65,6,3,21,43,65,23,432,313,214,4,54]
p bubble_sort(test_array)
