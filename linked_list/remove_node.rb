#!/usr/bin/env ruby

require_relative('linked_list')

def remove_node(nodes, remove_val)
  @linked_list = LinkedList.new
  nodes.each { |n| @linked_list.insert(n) }
  
  @linked_list.remove(remove_val)

  @linked_list.to_a
end

nodes = ARGV.first.split(',').map(&:to_i)
remove_val = ARGV.last.to_i

p remove_node(nodes, remove_val)
