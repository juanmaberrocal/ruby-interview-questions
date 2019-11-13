#!/usr/bin/env ruby

def palindrome(string)
  string == string.reverse
end

string = ARGV.first.to_s

p palindrome(string)
