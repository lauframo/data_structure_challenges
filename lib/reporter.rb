module Reporter
  @opcounts = Hash.new {|hash, key| hash[key] = 0}

  def track(method)
    alias_method :"original_#{method}", method
    define_method(method) do |*args|
      Reporter.increment_opcount(self.class, method)
      send("original_#{method}", *args)
    end
  end

  def self.opcounts
    @opcounts
  end

  def self.increment_opcount(klass, method)
    self.opcounts["#{klass}##{method}"] += 1
  end

  def self.reset
    self.opcounts.clear
  end

  def self.total_opcount
    self.opcounts.values.reduce(:+)
  end

  def self.report
    self.opcounts.each do |method, count|
      puts "#{method}: #{count} operations"
    end
    puts "Total: #{self.total_opcount}"
  end
end