# merge sort

def merge_sort(arr)
  return arr if arr.length < 2
  
  sorted=[]

  left_half = merge_sort(arr[0..(arr.length/2-1)])
  right_half = merge_sort(arr[(arr.length/2)..-1])

  while !left_half.empty?

    ( sorted.concat(left_half); break ) if right_half.empty?

    sorted << ( left_half[0] < right_half[0] ? left_half.shift : right_half.shift )

  end

  sorted.concat(right_half) 
  
end


p merge_sort([4, 2, 3, 1])
p merge_sort([8, 4, 2, 5, 1, 6, 7, 3])

