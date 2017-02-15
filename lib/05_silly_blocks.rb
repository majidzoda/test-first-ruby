def reverser
  input = yield
  return input.split.map { |word| word.reverse  }.join(" ")
end

def adder(add = 1)
  input = yield
  return input+add
end

def repeater(r = 1)
  r.times do
    yield
  end
end
