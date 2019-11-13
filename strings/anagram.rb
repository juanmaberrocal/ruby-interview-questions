#!/usr/bin/env ruby

def anagram(string1, string2)
  return false unless string1.length == string2.length

  char_map = {}
  string1.length.times do |i|
    char1 = string1[i]
    char2 = string2[i]

    char_map[char1] = 0 unless char_map.key?(char1)
    char_map[char2] = 0 unless char_map.key?(char2)

    char_map[char1] += 1
    char_map[char2] -= 1
  end

  !char_map.any? { |l, c| !c.zero? }
end

string1 = ARGV.first.to_s
string2 = ARGV.last.to_s

p anagram(string1, string2)
