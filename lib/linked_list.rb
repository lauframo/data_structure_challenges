require_relative 'exceptions'

class LinkedList
  attr_reader :length

  def initialize
    @head = nil
    @length = 0
  end

  def add(element)
    new_node = Node.new(element)
    if head == nil
      self.head = new_node
    else
      last_node.next = new_node
    end
    self.length += 1
    element
  end

  def get(position)
    raise NoSuchElementError if out_of_bounds?(position)
    find(position).element
  end

  def set(position, new_element)
    raise NoSuchElementError if out_of_bounds?(position)
    find(position).element = new_element
    new_element
  end

  def first
    raise NoSuchElementError if length == 0
    head.element
  end

  def last
    raise NoSuchElementError if length == 0
    last_node.element
  end

  def insert(position, element)
    raise OutOfBoundsError if out_of_bounds?(position)
    new_node = Node.new(element)
    if position == 0
      new_node.next = head
      self.head = new_node
    else
      node_before_insert = find(position-1)
      node_at_insert = node_before_insert.next
      node_before_insert.next = new_node
      new_node.next = node_at_insert
    end
    self.length += 1
    element
  end

  private

  attr_accessor :head
  attr_writer :length

  def find(position, current_node = head, current_position = 0)
    raise OutOfBoundsError if out_of_bounds?(position)
    if position == current_position
      return current_node
    else
      return find(position, current_node.next, current_position + 1)
    end
  end

  def last_node
    return nil if length == 0
    find(length-1)
  end

  def out_of_bounds?(position)
    position < 0 || position >= length
  end
end
