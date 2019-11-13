#!/usr/bin/env ruby

def fibbonaci_recursion(arg)
  return if arg.nil?
  
  nth_iteration = arg.to_i
  
  if nth_iteration < 2
    nth_iteration
  else
    fibbonaci_recursion(nth_iteration - 1) + fibbonaci_recursion(nth_iteration - 2)
  end
end

p fibbonaci_recursion(ARGV.first)
