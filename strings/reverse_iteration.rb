#!/usr/bin/env ruby

def reverse_iteration(string)
  reverse = ''

  string.length.times do |i|
    reverse << string[string.length - (i + 1)]
  end

  reverse
end

string = ARGV.first.to_s

p reverse_iteration(string)
