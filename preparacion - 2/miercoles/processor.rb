#Crea la clase "Computer" y agrega un método que permita solamente ver y no modificar el procesador de la computadora.
class Computer
  def initialize(processor)
    @processor = processor
  end
  def processor
    "#{@processor}"
  end
end

mac = Computer.new("Intel")

#test
p mac.processor
#=>"Intel"
mac.processor = "AMD"
#=>...undefined method `processor='...
