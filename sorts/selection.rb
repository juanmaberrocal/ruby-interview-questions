#!/usr/bin/env ruby

# The selection sort algorithm sorts an array by
# repeatedly finding the minimum element (considering ascending order)
# from unsorted part and putting it at the beginning.
#
# The good thing about selection sort is it never makes more than O(n) swaps
# and can be useful when memory write is a costly operation
#
# The algorithm maintains two subarrays in a given array:
# 1) The subarray which is already sorted.
# 2) Remaining subarray which is unsorted
#
# O(n2)
def selection(array)
  length = array.length

  # loop through entire array
  length.times do |i|
    min_index = i # init unsorted value is first element

    # loop through the remaining array
    (length - (i + 1)).times do |j|
      # keep track of the lowest value in the remaining array
      # by checking if the current lowest value
      # is greater than the next value in the remaining array
      next unless array[min_index] > array[j + (i + 1)]

      min_index = (j + (i + 1))
    end

    # swap current array value with the min_index value
    # if current and min_index are the same no swap happens
    array[i], array[min_index] = array[min_index], array[i]
  end

  array
end

array = ARGV.first.split(',').map(&:to_i)

p selection(array)
