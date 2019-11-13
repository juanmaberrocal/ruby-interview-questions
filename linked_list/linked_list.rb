#!/usr/bin/env ruby

class LinkedList
  class NoHeadError < StandardError; end
  class NotFoundError < StandardError; end
  class OutOfRangeError < StandardError; end

  class Node
    attr_reader :value
    attr_accessor :next

    def initialize(value)
      @value = value
      @next = nil
    end
  end

  attr_reader :head

  def initialize
    @head = nil
  end

  def to_a
    raise NoHeadError if @head.nil?

    node = @head
    list = [@head.value]

    while node.next
      node = node.next
      list << node.value
    end

    list
  end

  def find(value, before = false)
    raise NoHeadError if @head.nil?

    node = @head

    while node.next
      return node if (before ? node.next&.value : node.value) == value

      node = node.next
    end

    raise NotFoundError
  end

  def find_at(index)
    raise NoHeadError if @head.nil?

    node = @head
    index -= 1

    while node.next && index.positive?
      node   = node.next
      index -= 1
    end

    raise OutOfRangeError if index.positive?

    node
  end

  def find_last
    raise NoHeadError if @head.nil?

    node = @head
    node = node.next while node.next
    node
  end

  def insert(value)
    if @head.nil?
      @head = Node.new(value)
    else
      find_last.next = Node.new(value)
    end
  end

  def insert_at(index, value)
    node      = find_at(index)
    next_node = node.next

    node.next = Node.new(value)
    node.next.next = next_node
  end

  def remove(value)
    raise NoHeadError if @head.nil?

    if @head.value == value
      @head = @head.next
    else
      node = find(value, true)
      node.next = node.next.next
    end
  end
end
