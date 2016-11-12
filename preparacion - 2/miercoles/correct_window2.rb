=begin Corrige el código de la clase Window. No uses attr_reader, attr_writer o attr_accessor. Haz pasar las pruebas.
=end
class Window

  def initialize(color, size)
    @color = color
    @size = size
  end
  
  def color
    "#{@color}"
  end
  def size=(new_size)
    @size = new_size
  end

  def open
    "open #{@color} window"
  end

  def close
    "close window of #{@size} meters"
  end
end

window_1 = Window.new("green", 3)

#test
p window_1.color == "green"
window_1.size = 5
p window_1.open == "open green window"
p window_1.close == "close window of 5 meters"