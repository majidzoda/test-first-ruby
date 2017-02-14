def add(x,y)
  x+y
end

def subtract(x,y)
  x-y
end

def sum(array_number)
  sum = 0
  array_number.map { |number| sum += number }
  sum
end

def multiply(array_number)
  product = 1
  array_number.map { |number| product *= number }
  product
end
