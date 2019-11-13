#!/usr/bin/env ruby

require_relative('linked_list')

def find_node_at(nodes, index)
  @linked_list = LinkedList.new
  nodes.each { |n| @linked_list.insert(n) }
  
  @linked_list.find_at(index)
end

nodes = ARGV.first.split(',').map(&:to_i)
index = ARGV.last.to_i

p find_node_at(nodes, index)
