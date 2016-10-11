# Provides methods for recording and displaying how many times
# specific methods are called.

require 'colorize'

module Reportable
  def print_operations_data
    puts
    puts "----OPERATIONS DATA----"
    puts
    puts "Total operations: #{total_operations}"
    puts
    operations.each do |op, count|
      puts "Total #{op.to_s.red.bold} calls: #{count}"
    end
    puts
    puts "-----------------------"
    puts
  end

  private

  attr_accessor :operations

  def total_operations
    operations.values.inject(&:+)
  end

  def record_operation(operation)
    operations[operation] ||= 0
    operations[operation] += 1
  end
end
