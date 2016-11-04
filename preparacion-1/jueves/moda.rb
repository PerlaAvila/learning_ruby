def mode(array)
 counter = Hash.new(0)

  array.each do |i|
   counter[i] += 1
  end
  mode_array = [] 
  counter.each do |k, v|
    if v == counter.values.max
      mode_array << k
    end#if
  end#do  
mode_array.sort
end
  
# Pruebas
p mode([1, 2, 2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]