def user
  entradas = ""
  counter = 0
  while entradas != "Ya"
       puts 'Hola:'
       entradas = gets.chomp
       counter += 1
   end
   counter
end
p user