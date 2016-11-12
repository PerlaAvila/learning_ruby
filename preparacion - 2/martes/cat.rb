=begin
Crea una clase Cat que permita crear objetos Cat con diferentes 
nombres y que le permita al gato realizar las siguientes acciones: meow, run y jump. 
Haz pasar la pruebas correspondientes.
=end
class Cat
  @@distance = 0

  def initialize(name)
    @name = name
  end

  def jump
    "Saltando..."
  end

  def run(num=0)
    @@distance += num
    "Corriendo #{@@distance} mts..." 
  end

  def self.meow
    "Miau... Miau..."
  end

end

cat_1 = Cat.new("Ramon")
cat_2 = Cat.new("Camila")
cat_4 = Cat.new("Chuchito")
cat_5 = Cat.new("Clemen")
#test

cat_3 = Cat.new("catty")

p cat_1.jump == "Saltando..."
p cat_5.jump == "Saltando..."
p Cat.meow == "Miau... Miau..."
p cat_3.run == "Corriendo 0 mts..."
p cat_3.run(20) == "Corriendo 20 mts..."
p cat_3.run(10) == "Corriendo 30 mts..."
p cat_3.run(10) == "Corriendo 40 mts..."
