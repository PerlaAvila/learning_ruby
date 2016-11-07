hash = { dato_1: 'bla', dato_2: 'bla_2', dato_3: 'bla_3', dato_4: 'bla_4' }

def hw(hash)
 values = Array.new
  hash.each do |k, v|
  	values << v
  end
  values
end

p hw(hash) == ["bla", "bla_2", "bla_3", "bla_4"]