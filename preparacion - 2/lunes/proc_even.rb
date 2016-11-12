#Crea el Proc even que identifique números pares. Haz pasar la prueba.


numbers = [2, 4, 7, 10, 23, 34, 45, 42]
even = Proc.new {|number| number.to_i.even? ? "Even" : number}

#test
p numbers.map(&even) == ["Even", "Even", 7, "Even", 23, "Even", 45, "Even"]