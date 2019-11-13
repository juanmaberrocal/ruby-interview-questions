#!/usr/bin/env ruby

def only_one_in_array(arg)
  return if arg.nil?
  
  array = arg.split(',').map(&:to_i)

  # STEP 1:
  only = array.slice!(1)

  array.each do |a|
    only = only ^ a
  end

  p only
end

only_one_in_array(ARGV.first)
