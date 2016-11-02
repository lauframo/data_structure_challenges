require_relative 'fixed_array'
require_relative 'exceptions'

class ArrayList
  attr_reader :length

  def initialize
    @fixed_array = FixedArray.new(8)
    @length = 0
  end

  def add(item)
    expand_array_capacity if length == fixed_array.size

    fixed_array.set(length, item)
    self.length += 1

    item
  end

  def get(index)
    raise NoSuchElementError if index >= length
    fixed_array.get(index)
  end

  def set(index, value)
    raise NoSuchElementError if index >= length
    fixed_array.set(index, value)
  end

  def insert(index, value)
    raise OutOfBoundsError if index >= length
    expand_array_capacity if length == fixed_array.size

    last_index.downto(index).each do |i|
      fixed_array.set(i+1, get(i))
    end

    fixed_array.set(index, value)
    self.length += 1

    value
  end

  def first
    raise NoSuchElementError if length == 0
    @fixed_array.get(0)
  end

  def last
    raise NoSuchElementError if length == 0
    @fixed_array.get(length - 1)
  end

  private

  attr_accessor :fixed_array
  attr_writer :length

  def expand_array_capacity
    new_array = FixedArray.new(fixed_array.size * 2)

    0.upto(last_index).each do |i|
      value = fixed_array.get(i)
      new_array.set(i, value)
    end

    self.fixed_array = new_array
  end

  def last_index
    length - 1
  end
end
