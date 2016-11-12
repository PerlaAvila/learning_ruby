# #EJERCICIO UNO
# def vowels(list)
#    list.map{|words|words.delete("aeiou")} ; end

# p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]

# EJERCICIO DOS

# def get_sum(a, b)
#   (b < a) ? a :(a..b).to_a.inject(:+) ; end

# p get_sum(1, 0) == 1
# p get_sum(1, 2) == 3
# p get_sum(0, 1) == 1
# p get_sum(1, 1) == 1
# p get_sum(-1, 0) == -1
# p get_sum(-1, 2) == 2

=begin
Ahora vamos a aprovechar los Hashes como herramienta de organización para distinguir alimentos por grupo 
alimenticio. Para esto deberás generar un método que tome como parámetro un string que contenga una comida, 
y buscarlo en el siguiente hash, regresando su key como valor de retorno, si no encuentra la comida 
deberá regresar "comida no encontrada".
=end
# Deberás utilizar este Hash como base de tu programa
# def food_group(food)
#   food_groups = {
#     "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
#     "vegetal" => ['Zanahoria', 'Maíz', 'Elote', 'Calabaza', 'Papa'],
#     "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
#     "carne" => ['Res', 'Pollo', 'Salmón', 'Pescado', 'Cerdo'],
#     "lácteo" => ['Leche', 'Yogur', 'Queso', 'Crema']
#     }

#   food_groups.each do |key, array| 
#     array.each{|foods| return key if foods == food}
#   end
#   else
#   "comida no encontrada"
# end

# p food_group('Crema') == "lácteo"
# p food_group('Res') == "carne"
# p food_group('Piña') == "fruta"
# p food_group('Caña') == "comida no encontrada"

=begin
Dado
Define la clase Die. Todos los objetos de esta clase (dados) son creados con un número de lados definido 
por el usuario. Además define un método roll que sea capaz de lanzar el dado y que regrese un número entre 
uno y el número de lados del dado. Ten en cuenta que un dado no puede tener un solo lado, notifícale al usuario. 
efine getters y setters para los lados del dado, y úsalos. No puedes usar los attr_* que nos da Ruby.
=end

# class Die
#   def initialize(sides)
#     @sides = sides
#   end

#   def sides=(new_sides)
#     @sides = new_sides
#   end

#   def sides
#     @sides
#   end

#   def die_roll
#     rand(@sides) + 1
#   end

#   def roll(number=1)
#     roll_array = []
#     number.times do
#       roll_array << die_roll
#   end
#   total = 0
#   roll_array.each do |roll|
#     new_total = total + roll
#     total = new_total
#   end
#   @sides <= 1 ? "Please choose a number above 1" : "You have rolled a #{total}"
# end
# end

# die_1 = Die.new(8)
# die_2 = Die.new(4)
# die_3 = Die.new(1)

# p die_1.roll
# p die_2.roll
# p die_3.roll
# p die_3.sides
  
#EXERCISE 3

=begin
Driving
Crea una clase llamada MyCar. Cuando inicializas un nuevo objeto de la clase se permite 
al usuario definir las variables de instancia que nos dicen el año, color y modelo del carro. 
Crea métodos de instancia que permiten al carro acelerar, frenar y apagar el carro. 
Haz pasar todas las pruebas correspondientes.
=end
# class MyCar
#   attr_accessor :speed, :year, :color, :brand

#   @@current_speed = 0

#   def initialize(speed, year, color, brand)
#     @year = year
#     @color = color
#     @brand = brand
#     @speed = speed
#   end

#   def speed_up(speed)
#     @@current_speed += speed
#     "You push the gas and accelerate #{speed} kph."
#   end

#   def current_speed
#     "You are now going #{@@current_speed} kph."
#   end

#   def brake(speed)
#     @@current_speed -= speed
#     "You push the brake and decelerate #{speed} kph."
#   end

#   def shut_down
#     "Let's shut down to 0!"
#   end
# end


# carro_prueba = MyCar.new(0, "86", "red", "toyota")

# # Driver code
# p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
# p carro_prueba.current_speed == "You are now going 20 kph."
# p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
# p carro_prueba.current_speed == "You are now going 40 kph."
# p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
# p carro_prueba.current_speed == "You are now going 20 kph."
# p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
# p carro_prueba.current_speed == "You are now going 0 kph."
# p carro_prueba.shut_down == "Let's shut down to 0!"
# p carro_prueba.current_speed == "You are now going 0 kph." 


=begin
Crea la clase Playlist que para inicializarla recibe 2 argumentos: name (nombre del playlist) 
y songs (lista de canciones).
Crea una forma para poder leer el nombre del Playlist.
Crea el método number_of_songs que regresa el número de canciones que contiene el Playlist.
Crea el método add_song que agrega una canción a la lista.
Crea el método next_song que regresa la siguiente canción del Playlist. Para esto necesitarás 
llevar control de cuál es la canción actual. Si el playlist se encuentra en la última canción 
debe de volver a iniciar.

Al crear una nueva instancia de Playlist la canción actual por default debería ser la primera 
canción de la lista que le pasen.
=end

class Playlist
  attr_accessor :name, :songs
  attr_reader :current, :next_song

  def initialize(name, songs)
    @name = name
    @songs = songs
    @current = @songs[0]
  end

  def number_of_songs
    @songs.count
  end

  def add_song(title)
    @songs << title
  end

  def next_song
    @songs.each_with_index do |song, index|
      if song == @songs.last
        return @current = @songs.first
      elsif song == @current
        return @current = @songs[index + 1]
      end
    end
  end
end
  
 
 list = Playlist.new("sad songs to cry for", ["me quiero morir", "odio", "los", "examenes"])

 p list.number_of_songs == 4
 p list.add_song("odio mi vida") == ["me quiero morir", "odio", "los", "examenes", "odio mi vida"]
 p list.number_of_songs == 5
 p list.current #== "me quiero morr"
 p list.next_song #== "odio"
 p list.next_song
 p list.next_song
 p list.next_song
 p list.next_song
