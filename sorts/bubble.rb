#!/usr/bin/env ruby

# Bubble Sort is the simplest sorting algorithm
# that works by repeatedly swapping the adjacent elements
# if they are in wrong order.
#
# Due to its simplicity,
# bubble sort is often used to introduce the concept of a sorting algorithm.
#
# O(n*n)
def bubble(array)
  length = array.length

  # loop through entire array
  length.times do
    # keep track if any values have been swapped
    swapped = false

    # go through array values
    (length - 1).times do |j|
      # if the "next" value is greater than the current value
      # swap array values
      next unless array[j] > array[j + 1]

      temp         = array[j]
      array[j]     = array[j + 1]
      array[j + 1] = temp

      # flag change happened to ensure array is looped again
      swapped = true
    end

    # if no modifications happened during "second" pass
    # there is no need to keep checking array
    break unless swapped
  end

  array
end

array = ARGV.first.split(',').map(&:to_i)

p bubble(array)
