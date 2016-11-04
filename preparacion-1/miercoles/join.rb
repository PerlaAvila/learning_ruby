def join_arrays(parametro_1, parametro_2)
  parametro_1.each do |array1|
  parametro_2.each do |array2|
  parametro_1 + parametro_2
  end
end
 parametro_1 + parametro_2
end

# Pruebas
p join_arrays([1, 2, 3], [4, 5, 6]) == [1, 2, 3, 4, 5, 6]
p join_arrays(['a', 'b', 'c'], ['d', 'e', 'f']) == ['a', 'b', 'c', 'd', 'e', 'f']