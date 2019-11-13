#!/usr/bin/env ruby

def unique_characters(string)
  chars = []

  string.each_char do |c|
    return false if chars.include?(c)
    chars << c
  end

  true
end

string = ARGV.first.to_s

p unique_characters(string)
