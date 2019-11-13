#!/usr/bin/env ruby

# O(n)
def frequent_integer(arg)
  return if arg.nil?
  
  array = arg.split(',').map(&:to_i)

  # STEP 1:
  # tracker for array value counts
  frequent_counter = {}

  # go through array values
  # add value to hash (if key doesnt exist)
  # increase counter
  array.each do |a|
    frequent_counter[a] = 0 unless frequent_counter.key?(a)
    frequent_counter[a] += 1
  end

  # STEP: 2
  # trackers for current max count and
  #              current number
  count  = 0
  number = nil

  # go through hash of counted values
  # check if the hash counter value is greater than the current max
  # store the new number value if it was
  frequent_counter.each do |num, counter|
    if counter > count
      count  = counter
      number = num
    end
  end

  p number
end

frequent_integer(ARGV.first)
