#!/usr/bin/env ruby

def pascals_triangle(nth_iteration)
  pascal = []

  nth_iteration.times do |line|
    c = 1
    l = line + 1

    row = []
    l.times do |iteration|
      i = iteration + 1

      row << c
      c = (c * (l - i) / i)
    end

    p row
    pascal << row
  end

  pascal
end

nth_iteration = ARGV.first.to_i

p pascals_triangle(nth_iteration)
