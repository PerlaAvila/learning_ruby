def large(text)
  return text.upcase if text.length > 20
  text
end

p large("hola vamos a la comida") == "HOLA VAMOS A LA COMIDA"
p large("Es hora de dormir") == "Es hora de dormir"