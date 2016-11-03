def say_hi(name)
   if name == "Perla"
     "Welcome back"
    else
      "Hi, #{name}"
   end
end

# Pruebas
p say_hi('Perla') == "Welcome back"
p say_hi('Juan') == "Hi, Juan"