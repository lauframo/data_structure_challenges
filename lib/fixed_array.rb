require_relative 'exceptions'

class FixedArray
  attr_reader :size

  def initialize(size)
    @size = size
    @contents = []
  end

  def get(index)
    raise_out_of_bounds(index) if out_of_bounds?(index)
    return contents[index]
  end

  def set(index, value)
    raise_out_of_bounds(index) if out_of_bounds?(index)
    contents[index] = value
  end

  private
  attr_reader :contents

  def raise_out_of_bounds(index)
    raise OutOfBoundsError.new("The index #{index} outside the bounds of this FixedArray of size #{size}")
  end

  def out_of_bounds?(index)
    return index < 0 || index >= size
  end
end
