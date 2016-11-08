def validate(array)
  !array.respond_to?(:to_s)
end

#test
p validate([1, 3, 5]) == false