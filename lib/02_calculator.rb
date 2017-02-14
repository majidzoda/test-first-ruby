def add(x,y)
  return x+y
end

def subtract(x,y)
  return x-y
end

def sum(array_number)
  sum = 0
  array_number.map { |number| sum += number }
  return sum
end

def multiply(array_number)
  product = 1
  array_number.map { |number| product *= number }
  return product
end

def power(number, power)
  result = 1
  power.times  {result *= number}
  return result
end

def factorial(num)
  result = 1
  if num == 0
    return result
  else
    while num > 0
      result *= num
      num -= 1
    end
    return result
  end
end
