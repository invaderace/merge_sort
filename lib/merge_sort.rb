# frozen_string_literal: true

def merge_sort(array)
  if array.length < 2
    array
  else
    left = array[0..array.length / 2 - 1]
    left = merge_sort(left)
    right = array[array.length / 2..array.length]
    right = merge_sort(right)
    merge(left, right)
  end
end

def merge(left, right, array = [])
  left[0] < right[0] ? array.push(left.shift) : array.push(right.shift) until left.length.zero? || right.length.zero?

  left.length.zero? ? array.concat(right) : array.concat(left)
end

array = [5, 8, 9, 2, 6, 10, 2, 1, 18, 325, 0]
p array
p merge_sort(array)
