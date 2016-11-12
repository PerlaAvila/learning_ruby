#Crea el método spray_paint que pueda ser llamado sobre una instancia y 
#modifique el color de la puerta. Haz pasar la prueba.
class House
  def initialize(color)
    @color = color
  end

  def spray_paint(new_color)
    @color = new_color
    "The #{@color.capitalize} door looks great!"
  end
end

big_door = House.new("blue")

#test
p big_door.spray_paint('yellow') == "The Yellow door looks great!"