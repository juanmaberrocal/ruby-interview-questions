#!/usr/bin/env ruby

def reverse_recursion(s, i = 0)
  string = s.dup
  return string if string.length / 2 == i

  string[i], string[string.length - i - 1] =
    string[string.length - i - 1], string[i]

  reverse_recursion(string, i + 1)
end

string = ARGV.first.to_s

p reverse_recursion(string)
