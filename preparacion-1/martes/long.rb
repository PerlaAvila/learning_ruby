def longest(array)
  ar = []

  if array.empty?
    nil
  else
    tam = 0
    result = array.max_by(&:length) 
    array.each do |word|
       if result.length == word.length

      ar << word
       end
    end
  end
  ar
end
# Pruebas
p longest(['tres', 'pez', 'alerta', 'cuatro', 'tesla', 'tropas', 'siete']) == ["alerta", "cuatro", "tropas"]
p longest(['gato', 'perro', 'elefante', 'jirafa']) == ["elefante"]
p longest(['verde', 'rojo', 'negro', 'morado']) == ["morado"]
