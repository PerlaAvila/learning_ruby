def add (a, b)
  a + b
end

def substract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def divide(a, b)
  answer = a / b.to_f
  answer
end

# Test
p add(10, 2) == 12
p substract(10, 2) == 8
p multiply(10, 2) == 20
p divide(10, 4) == 2.5
