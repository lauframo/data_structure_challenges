module Reportable
  attr_reader :operations

  private

  attr_writer :operations

  def record_operation(operation)
    operations[operation] ||= 0
    operations[operation] += 1
  end
end