#!/usr/bin/env ruby

require_relative('linked_list')

def insert_node(nodes, insert_val)
  @linked_list = LinkedList.new
  nodes.each { |n| @linked_list.insert(n) }
  
  @linked_list.insert(insert_val)

  @linked_list.to_a
end

nodes = ARGV.first.split(',').map(&:to_i)
insert_val = ARGV.last.to_i

p insert_node(nodes, insert_val)
