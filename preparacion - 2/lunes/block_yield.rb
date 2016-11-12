=begin
Dado el siguiente código:

#método que usa yield para llamar al bloque 
def average_grade
  yield
end

#método para calcular el promedio de calificaciones
def average_grade(grades)
  count = 0
  average = 0
  grades.each{ |grade|
     average += grade
     count += 1
  }
  average.to_f / count
end
¿Qué modificarías del código anterior para imprimir una tabla como se muestra en la prueba?

#test
#=>
# ------------Time started----------
# Start time: 2016-06-17 20:14:46 -0500

# "Average is: 7.6"

# End time: 2016-06-17 20:14:46 -0500
# -------------Time finished--------
# Result: 0.000142 seconds
Considera lo siguiente:

El método average_grade debe aceptar un parámetro de calificaciones y usar yield para llamar a un bloque. El bloque debe regresar el promedio de las calificaciones. Revisa el uso de la clase Time.

Refactoriza el código con el uso de inject.
=end 

def average_grade(grades)
  puts "--------- Time Started ----------"
  start = Time.now
  puts "Start time: #{start}"
  puts "Average is: #{yield}"
  finish = Time.now
  puts "End time: #{finish}"
  puts "--------- Time Finished ----------"
  result = (finish - start) * 1000.0
  puts "Result: #{result} seconds"
end

grades = [8.5, 6.5, 7.9, 5.5]
average_grade(grades){grades.reduce(:+) / grades.count}
  
  
