class Temperature
  def initialize(options = {})
    @temp_holder = Hash.new
    if options.include?(:f)
      @temp_holder[:fahrenheit] = options[:f].to_f
      @temp_holder[:celcius] = converter("c")
    elsif options.include?(:c)
      @temp_holder[:celcius] = options[:c].to_f
      @temp_holder[:fahrenheit] = converter("f")
    end
  end

  def in_fahrenheit
    return @temp_holder[:fahrenheit]
  end

  def in_celsius
    return @temp_holder[:celcius]
  end


  def converter(to)
    return (@temp_holder[:celcius] * 9.0 / 5.0) + 32 if to == "f"
    return (@temp_holder[:fahrenheit] - 32) * 5.0 / 9.0
  end

  def Temperature.from_celsius(temp)
    Temperature.new(:c => temp)
  end

  def Temperature.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end
end

class Celsius < Temperature
  def initialize(temp)
    super(:c => temp)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(:f => temp)
  end
end
