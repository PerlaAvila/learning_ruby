hash = { dato_1: 'bla', dato_2: 'bla_2', dato_3: 'bla_3', dato_4: 'bla_4' }

def hw(hash)
 keys = Array.new
  hash.each do |k, v|
  	keys << k
  end
  keys
end

p hw(hash) == [:dato_1, :dato_2, :dato_3, :dato_4]