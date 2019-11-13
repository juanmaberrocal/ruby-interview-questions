#!/usr/bin/env ruby

# Insertion sort is a simple sorting algorithm
# that works the way we sort playing cards in our hands.
#
# Insertion sort is used when number of elements is small.
# It can also be useful when input array is almost sorted,
# only few elements are misplaced in complete big array.
#
# Algorithm
# Sort an arr[] of size n
# insertionSort(arr, n)
# Loop from i = 1 to n-1.
# ...a) Pick element arr[i] and insert it into sorted sequence arr[0…i-1]
#
# O(n2)
def insertion(array)
  length = array.length

  # loop through entire array
  # (l - 1) since loop checks "next" value
  (length - 1).times do |i|
    key = array[i + 1] # next value

    # mark starting position
    # as the current array position
    j = i

    # if the "next" value is smaller than the current value
    # move the current value one position forward
    while j >= 0 && key < array[j]
      array[j + 1] = array[j]
      j -= 1
    end

    # put back the "next" value after rest of values moved
    # `j + 1` since we always decrease `j`
    array[j + 1] = key
  end

  array
end

array = ARGV.first.split(',').map(&:to_i)

p insertion(array)
