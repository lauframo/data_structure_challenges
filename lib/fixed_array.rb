require_relative 'exceptions'
require_relative 'reporter'

class FixedArray
  extend Reporter
  attr_reader :size

  track def initialize(size)
    @size = size
    @contents = []
  end

  track def get(index)
    raise_out_of_bounds(index) if out_of_bounds?(index)
    return contents[index]
  end

  track def set(index, value)
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
