def elapsed_time
  measure
end

def measure(num = 1)
  time_seek = Time.now
  num.times do
     yield
  end
  return (Time.now - time_seek) / num
end
