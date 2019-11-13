#!/usr/bin/env ruby

def common_elements(arg1, arg2)
  return if arg1.nil? || arg2.nil?
  
  array1 = arg1.split(',').map(&:to_i)
  array2 = arg2.split(',').map(&:to_i)

  # STEP 1:
  p array1 & array2
end

common_elements(ARGV.first, ARGV.last)
