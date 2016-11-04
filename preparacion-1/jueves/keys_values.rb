hash = { dato_2: 'bla_2', dato_3: 'bla_3', dato_4: 'bla_4', dato_1: 'bla' }

def metodo_hash(hash)
  hash.each do |key, value|
    if key == :dato_1
      return "El valor de la llave es #{key} y su valor es #{value}"
    end
  end
end

p metodo_hash(hash) == "El valor de la llave es dato_1 y su valor es bla"