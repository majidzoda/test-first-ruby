class Array
  def sum
    return 0 if self.empty?
    result = 0
    self.each {|element| result+=element}
    return result
  end

  def square
    return self.map {|element| element*element}
  end

  def square!
    return self.map! {|element| element*element}
  end
end
