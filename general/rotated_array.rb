#!/usr/bin/env ruby

def rotated_array(arg1, arg2)
  return if arg1.nil? || arg2.nil?
  
  array1 = arg1.split(',').map(&:to_i)
  array2 = arg2.split(',').map(&:to_i)

  # STEP1:
  # tracker for cycled array and
  #             cycled flag check
  rotated_check = array2 + array2
  is_rotated = false

  # go through the elements in the cycled array
  # slice cycled array from current element to length of array to check
  # if the slices match then the array is cycled
  rotated_check.length.times do |i|
    rotated_slice = rotated_check.slice(i, array1.length)
    is_rotated = rotated_slice == array1
    break if is_rotated
  end

  p is_rotated
end

rotated_array(ARGV.first, ARGV.last)
