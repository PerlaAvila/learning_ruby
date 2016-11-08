def prime(numbers)
   return enum_for(:numbers) unless block_given?
   each do |prime|
    yield 
 end
end
p prime(1..50)

#Define el método prime que acepte un parámetro y use yield para llamar a un bloque. 
#El bloque debe regresar los primeros diez números primos en un arreglo.