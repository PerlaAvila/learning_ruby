hash = { dato_1: 'bla', dato_2: 'bla_2', dato_3: 'bla_3', dato_4: 'bla_4' }
def hw(hash)
  hash.each_key.to_a
end

p hw(hash) == [:dato_1, :dato_2, :dato_3, :dato_4]