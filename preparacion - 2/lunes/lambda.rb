#Crea un Lambda que muestre los strings que tienen más de 4 letras. 
#Haz pasar las pruebas.

strings = ["ruby", "java", "c++", "javascript"]
char_length = lambda {|char| if char.length > 4 then char end}

p strings.select(&char_length).join(", ") == "javascript"
