#!/usr/bin/env ruby

require('set')

# O(n)
def array_pairs_sum(arg1, arg2)
  return if arg1.nil? || arg2.nil?
  
  array = arg1.split(',').map(&:to_i)
  sum   = arg2.to_i

  # STEP1:
  # trackers for sum difference and
  #          valid sum pairs
  diff_bank = Set[]
  sum_pairs = []

  # go through array of values
  # get the difference between the target sum and the current value
  # if the difference exists in the diff_bank that means
  # the current value in the array and the diff hit the target sum
  array.each do |a|
    diff = sum - a
    sum_pairs << [diff, a] if diff_bank.include?(diff)
    diff_bank.add(a)
  end

  p sum_pairs
end

array_pairs_sum(ARGV.first, ARGV.last)
