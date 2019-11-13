#!/usr/bin/env ruby

# Merge Sort is a Divide and Conquer algorithm.
# It divides input array in two halves,
# calls itself for the two halves and then merges the two sorted halves.
#
# Merge Sort is useful for sorting linked lists in O(nLogn) time.
# In the case of linked lists, the case is different mainly due
# to the difference in memory allocation of arrays and linked lists.
#
# O(nLogn)
def merge(array)
  length = array.length
  return array unless length > 2 # sort divides array in half

  # split array down the middle
  # and merge left and right sides
  # merge is recursive until only 2 elements remain
  mid   = length / 2
  left  = array[0..mid]
  right = array[(mid + 1)..length]

  merge(left)
  merge(right)

  # trackers for left right and merge
  i = 0
  j = 0
  k = 0

  # go through all the array elements in left and right side
  # and place back into current array position
  while i < left.length && j < right.length
    if left[i] < right[j]
      array[k] = left[i]
      i += 1
    else
      array[k] = right[j]
      j += 1
    end

    k += 1 # keep track of array position
  end

  # fill in any remaining values
  # from the left and right sides
  while i < left.length
    array[k] = left[i]
    i += 1
    k += 1
  end

  while j < right.length
    array[k] = right[j]
    j += 1
    k += 1
  end

  array
end

array = ARGV.first.split(',').map(&:to_i)

p merge(array)
