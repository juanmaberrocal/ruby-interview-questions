#!/usr/bin/env ruby

def binary_search_iteration(array, target, left_index, right_index)
  # if there is no "right" value left
  # the element is not present and return -1
  while right_index > 0
    # get the midpoint value and check if its the target value
    # if its not the target value check if midway is greater or less
    # if greater => do binary search on left half
    # if less => do binary search on right half
    mid_index = left_index + (right_index - left_index) / 2

    if array[mid_index] == target
      return mid_index
    elsif array[mid_index] > target
      right_index = mid_index - 1
    else
      left_index = mid_index + 1
    end
  end

  -1
end

array  = ARGV.first.split(',').map(&:to_i)
target = ARGV.last.to_i

p binary_search_iteration(array, target, 0, array.length - 1)
