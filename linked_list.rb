require 'byebug'
require_relative 'reportable'

class LinkedList
  include Reportable

  attr_reader :head, :tail

  class OutOfBoundsError < StandardError; end

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
      self.class.new(head.next_link).get(index - 1)
    end
  end

  def set(value, index)
    record_operation(__method__)

    remove(index) if index < length
    insert(value, index)

    self
  end

  def insert(value, index = 0)
    record_operation(__method__)

    if index == 0
      @head = Link.new(value, head)
    else
      self.head ||= Link.new(nil, nil)
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
      self.class.new(head.next_link).length + 1
    end
  end

  private

  attr_writer :head

  def tail
    self.class.new(head.next_link)
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
