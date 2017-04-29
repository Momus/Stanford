def merge_sort(array)
  #puts "Looping"
  #p array
  return array if array.size <= 1
  left = merge_sort array[0, array.size / 2]
  right = merge_sort array[array.size / 2, array.size]

  merge(left, right)
  #puts "agfter merge"
end


def merge(left, right)
  result = []

  until left.empty? or right.empty?

    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
end

# MyArray = [3,2,4,1,7,0,9,5,8,6]
#MyArray = [3, 1, 2]
#output = merge_sort(MyArray)

#p output
