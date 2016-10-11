require 'byebug'

class ReportingLinkedList
  attr_reader :head, :tail

  def initialize(head = nil)
    @head = head
    @operations = {}
  end

  def get(index)
    record_operation(__method__)

    if index >= length
      nil
    elsif index == 0
      head.value
    else
      ReportingLinkedList.new(head.next_link).get(index - 1)
    end
  end

  def insert(value, index = 0)
    record_operation(__method__)

    if index == 0
      @head = Link.new(value, head)
    else
      head.next_link = tail.insert(value, index - 1).head
    end

    self
  end

  def remove(index)
    record_operation(__method__)

    if index == 0
      @head = tail.head
    else
      head.next_link = tail.remove(index - 1).head
    end

    self
  end

  def length
    record_operation(__method__)

    if head.nil?
      0
    else
      ReportingLinkedList.new(head.next_link).length + 1
    end
  end

  private

  attr_writer :head
  attr_accessor :operations

  def tail
    ReportingLinkedList.new(head.next_link)
  end

  def record_operation(operation)
    operations[operation] ||= 0
    operations[operation] += 1
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
