def join_arrays(parametro_1, parametro_2)
  array3 = Array.new
   parametro_1.each do |array1|
   array3 << array1
   end
   parametro_2.each do |array2|
   array3 << array2
   end
array3.sort
end

# Pruebas
p join_arrays([1, 2, 3], [4, 5, 6]) == [1, 2, 3, 4, 5, 6]
p join_arrays(['a', 'b', 'c'], ['d', 'e', 'f']) == ['a', 'b', 'c', 'd', 'e', 'f']