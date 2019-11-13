#!/usr/bin/env ruby

def fibbonaci_iteration(arg)
  return if arg.nil?
  
  nth_iteration = arg.to_i

  # STEP1:
  # tracker for the fibbonacci sequence
  # (start with 0, 1)
  fibbonaci = [0, 1]

  # loop n_times
  # each loop get the last 2 values and
  # add the sum to the fibbonaci array
  nth_iteration.times do |i|
    a = fibbonaci[fibbonaci.length - 1]
    b = fibbonaci[fibbonaci.length - 2]
    fibbonaci << (a + b)
  end

  p fibbonaci
  p fibbonaci.sum
end

fibbonaci_iteration(ARGV.first)
