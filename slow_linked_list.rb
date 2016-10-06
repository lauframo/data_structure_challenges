require 'byebug'

class SlowLinkedList
  attr_reader :head
  attr_reader :tail

  def initialize(head = nil)
    @head = head
  end

  def get(index)
    if index >= length
      nil
    elsif index == 0
      head.value
    else
      SlowLinkedList.new(head.next_link).get(index - 1)
    end
  end

  def insert(value, index = 0)
    if index == 0
      @head = Link.new(value, head)
    else
      head.next_link = tail.insert(value, index - 1).head
    end

    self
  end

  def remove(index)
    if index == 0
      @head = tail.head
    else
      head.next_link = tail.remove(index - 1).head
    end

    self
  end

  def length
    if head.nil?
      0
    else
      SlowLinkedList.new(head.next_link).length + 1
    end
  end

  private

  attr_writer :head

  def tail
    SlowLinkedList.new(head.next_link)
  end

  def operation!
    puts "Operation!"
    sleep 0.1
  end

  class Link
    attr_accessor :value
    attr_accessor :next_link

    def initialize(value, next_link)
      @value = value
      @next_link = next_link
    end
  end
end
