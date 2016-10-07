class FixedArray
  attr_reader :size

  class OutOfBoundsError < StandardError; end

  def initialize(size)
    @size = size
    @contents = []
  end

  def get(index)
    check_bound(index)
    return contents[index]
  end

  def set(index, value)
    check_bound(index)
    contents[index] = value
  end

  private
  attr_reader :contents

  def check_bound(index)
    if index < 0 || index >= size
      raise OutOfBoundsError.new("#{index} outside the bounds of this FixedArray of size #{size}")
    end
  end
end