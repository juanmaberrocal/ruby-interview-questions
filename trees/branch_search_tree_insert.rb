#!/usr/bin/env ruby

def branch_search_tree_insert(string)
  return 'int' if Integer(string, 10) rescue nil
  return 'float' if Float(string) rescue nil
  return 'invalid'
end

string = ARGV.first.to_s

p int_float_parse(string)
