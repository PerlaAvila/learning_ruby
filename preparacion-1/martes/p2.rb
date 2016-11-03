def saludo(name, age)
 if name == "Perla" 
    age == 18..99
   "Welcome"
 else
  "No eres mayor de edad"
 end
end
p saludo("Perla", 27) == "Welcome"
p saludo("Jorge", 17) == "No eres mayor de edad"