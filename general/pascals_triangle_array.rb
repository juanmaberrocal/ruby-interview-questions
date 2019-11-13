#!/usr/bin/env ruby

#
# Array Tracking
def pascals_triangle_array(nth_iteration)
  pascals = []

  prev_array = []
  nth_iteration.times do |i|
    if i.zero?
      row = [1]
    else
      row = []
      (i + 1).times do |j|
        row << if j.zero?
                 0 + (prev_array[j])
               elsif j == prev_array.length
                 (prev_array[j - 1]) + 0
               else
                 (prev_array[j - 1]) + (prev_array[j])
               end
      end
    end

    pascals << row
    p prev_array = row
  end

  pascals
end

nth_iteration = ARGV.first.to_i

p pascals_triangle_array(nth_iteration)
