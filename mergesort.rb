def merge_sort(array)
  return array if array.size <= 1

  left, right = array.each_slice((array.size/2).round).to_a

  merge = -> (left, right) {
    array = []
    while left.size > 0 && right.size > 0
      array << (left[0] < right[0] ? left.shift : right.shift)
    end

    return array = array + left + right
  }

  return merge.call merge_sort(left), merge_sort(right)
end
