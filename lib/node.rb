require_relative 'reporter'

class Node
  extend Reporter
  attr_accessor :element

  track def initialize(element)
    @element = element
    @next = nil
  end

  track def next
    @next
  end

  track def next=(next_node)
    @next = next_node
  end
end
