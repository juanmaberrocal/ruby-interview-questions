#!/usr/bin/env ruby

def first_non_repeat(string)
  s_map = {}

  string.split('').each do |s|
    s_map[s] = 0 unless s_map.key?(s)
    s_map[s] += 1
  end

  l = nil
  s_map.each do |letter, count|
    l = letter if count == 1
    break if l
  end

  l
end

string = ARGV.first.to_s

p first_non_repeat(string)
