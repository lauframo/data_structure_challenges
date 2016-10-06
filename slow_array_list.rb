class SlowArrayList
  def initialize(list = [])
    operation!
    @list = {}

    list.each_with_index do |item, index|
      @list[index] = item
    end
  end

  def get(index)
    operation!
    list[index]
  end

  def insert(value, index)
    operation!
    shift_right_from(index)
    list[index] = value
  end

  def remove(index)
    operation!
    shift_left_from(index + 1)
  end

  def length
    operation!
    list.length
  end


  private
  attr_accessor :list

  def shift_left_from(index)
    current = index

    while current < length
      list[current - 1] = list[current]
      current += 1
    end

    list.delete(length - 1)
  end

  def shift_right_from(index)
    current = length - 1

    while current >= index
      list[current + 1] = list[current]
      current -= 1
    end

    list.delete(index)
  end

  def shift_item_left(index)
    operation!
    item = list[index]
    list[index] = nil
    list[index - 1] = item
  end

  def shift_item_right(index)
    operation!
    item = list[index]
    list[index] = nil
    list[index + 1] = item
  end

  def operation!
    puts "Operation!"
    sleep 0.1
  end
end