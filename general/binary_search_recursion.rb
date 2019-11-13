#!/usr/bin/env ruby

def binary_search_recursion(array, target, left_index, right_index)
  # if there is no "right" value left
  # the element is not present and return -1
  if right_index > 0
    # get the midpoint value and check if its the target value
    # if its not the target value check if midway is greater or less
    # if greater => do binary search on left half
    # if less => do binary search on right half
    mid_index = left_index + (right_index - left_index) / 2

    if array[mid_index] == target
      mid_index
    elsif array[mid_index] > target
      binary_search_recursion(array, target, left_index, mid_index - 1)
    else
      binary_search_recursion(array, target, mid_index + 1, right_index)
    end
  else
    -1
  end
end

array  = ARGV.first.split(',').map(&:to_i)
target = ARGV.last.to_i

p binary_search_recursion(array, target, 0, array.length - 1)
