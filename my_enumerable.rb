module MyEnumerable
  def any?(&block)
    each { |item| return true if block_given? ? yield(item) : item }
    false
  end

  def all?(&block)
    each { |item| return false unless yield(item) }
    true
  end

  def filter(&block)
    result = []
    each { |item| result << item if block.call(item) }
    result
  end
end
