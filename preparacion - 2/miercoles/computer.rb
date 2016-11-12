#Crea la clase Computer y agrega un método para cambiar y ver el color de la computadora.
class Computer
 attr_accessor :color
end

mac = Computer.new
#test
mac.color = "Platinum"
p mac.color
#=>"Platinum"