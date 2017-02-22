
class RPNCalculator
  attr_accessor :calculator

  def initialize
    @calculator = []
  end

  def push(value)
    self.calculator << value.to_f
  end

  def plus
    self.calculator << validate(:+)
    return self.calculator.last
  end

  def minus
    self.calculator << validate(:-)
    return self.calculator.last
  end

  def times
    self.calculator << validate(:*)
    return self.calculator.last
  end

  def divide
    self.calculator << validate(:/)
    return self.calculator.last
  end

  def value
    return self.calculator.last
  end

  def tokens(str)
    return str.split.map do |element|
      case element
      when "+"
        :+
      when "-"
        :-
      when "*"
        :*
      when "/"
        :/
      else
        element.to_f
      end
    end
  end

  def evaluate(str)
    tokens(str).each do |element|
      case element
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        push element
      end
    end
    return self.calculator.last
  end


  private
  def validate(opr)
    if self.calculator.size < 2
      raise "calculator is empty"
    else
      return calculate(opr)
    end
  end

  def calculate(opr)
    dummy = self.calculator.pop
    case opr
    when :+
      return self.calculator.pop + dummy
    when :-
      return self.calculator.pop - dummy
    when :*
      return self.calculator.pop * dummy
    when :/
      return self.calculator.pop / dummy
    end
  end
end
