#!/usr/bin/env ruby

# O(n^2)
# Binomial Coefficient
def pascals_triangle_binomial(nth_iteration)
  pascal = []

  nth_iteration.times do |line|
    c = 1 # first value is always 1
    l = line + 1 # .times starts `line` at 0

    row = []
    l.times do |iteration|
      i = iteration + 1 # .times starts `iteration` at 0

      # add calculated line value
      row << c

      # recalculate next line value
      # using binomial coefficient formula
      c = (c * (l - i) / i)
    end

    p row
    pascal << row
  end

  pascal
end

nth_iteration = ARGV.first.to_i

p pascals_triangle_binomial(nth_iteration)
