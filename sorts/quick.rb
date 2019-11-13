#!/usr/bin/env ruby

# QuickSort is a Divide and Conquer algorithm.
# It picks an element as pivot and partitions
# the given array around the picked pivot.
# The key process in quickSort is partition().
# Target of partitions is, given an array and an element x of array as pivot,
# put x at its correct position in sorted array and
# put all smaller elements (smaller than x) before x,
# and put all greater elements (greater than x) after x.
#
# Quick Sort in its general form is an in-place sort
# (i.e. it doesn't require any extra storage_
# whereas merge sort requires O(N) extra storage,
# N denoting the array size which may be quite expensive.
#
# O(nLogn)
def quick(array, low_index, high_index)
  return unless low_index < high_index

  # partition array
  i     = (low_index - 1) # index of smallest element
  pivot = array[high_index] # pivot from highest element

  # go through all array elements from
  # lowest to highest index provided
  # if current value is less than pivot
  # move value to the left of pivot
  (low_index..high_index).each do |j|
    next unless array[j] < pivot

    i += 1 # increase index of smallest element

    # swap positions of elements
    array[i], array[j] = array[j], array[i]
  end

  partition = (i + 1)
  array[partition], array[high_index] =
    array[high_index], array[partition]

  # recursive sorting of split array
  quick(array, low_index, partition - 1)
  quick(array, partition + 1, high_index)

  array
end

array = ARGV.first.split(',').map(&:to_i)

p quick(array, 0, array.length - 1)
