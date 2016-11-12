=begin
Crea las siguientes clases: Animal, Dog, Turtle, Macaw, Fish, Dolphin, Reptile, Cat, Whale, Snake, 
Mammal, Bird. El objetivo de este ejercicio es relacionar todas estas clases con herencia, 
de tal manera de colocar los comportamientos correctos en las clases correctas.

Define un comportamiento común que pueda ser heredado por todas las clases. 
Crea una constante en las clases Dog, Turtle, Macaw, Fish, Dolphin, Cat, Whale y Snake 
que guarde información de estas clases y las diferencie de las demás. Al final muestra la información 
de estas constantes a través de comportamientos definidos de cada clase.

Hay que crear las pruebas correspondientes. Recuerda que las pruebas deben regresar true.
=end
#SuperClassAnimal
class Animal
    def speak 
      "I am a #{self.class} and I need oxigen" 
    end
end

class Mammal < Animal
  def initialize(blood)
    @blood = blood
  end
  def warm_blooded?
    (@blood == "warm blood") ? true : false
  end
end


class Dog < Mammal
  BARK = "When I watch another dog I go .... Rooffffffffffffaauahdufhyuh"
  def bork
    "#{BARK}"
  end
end
class Cat < Mammal
  PRETTY = "I'm the most beautiful animal that has ever existed"
  def pretty
    "#{PRETTY}"
  end
end
class Dolphin < Mammal
  SMART = "I can help humans and fat useless whales"
  def smartness
    "#{SMART}"
  end 
end
class Whale < Mammal
  SINGS = "I can sing, but nobody can hear me"
  def sing
    "#{SINGS}"
  end
end

class Reptile < Animal
  def initialize(scales)
    @scales = @scales
  end
  def has_scales?
    (@scales == "I have scales") ? false : true
  end
end
class Turtle < Reptile
  WALK = "I wa l k   r  e   a  l   l  y    s    l     o      w "
  def walks
    "#{WALK}"
  end
end
class Snake < Reptile
  SLITHER = "Some people are afraid of me because I'm from zzzzzzzlitherin"
  def slither
    "#{SLITHER}"
  end
end

class Bird < Animal
  def initialize(beak)
    @beak = beak
  end
  def has_beak?
   (@beak == "I have beak") ? true : false
  end
end
class Macaw < Bird
  POOP = "I can poop above your head"
  def poop
    "#{POOP}"
  end
end

class Fish < Animal
  def initialize(swim)
    @swim = swim
  end
  def swims?
    (@swim == "swims") ? true : false
  end
end

#test
#Aquí deben ir las pruebas correspondientes
mammal = Animal.new
doggo = Mammal.new("warm blood")
cat = Mammal.new("warm blood")
flipper = Mammal.new("warm blood")
willy = Mammal.new("warm blood")
doggo_2 = Dog.new("warm blood")
cat_2 = Cat.new("warm blood")
dolphin = Dolphin.new("warm blood")
whale = Whale.new("warm blood")
reptile = Animal.new
donnatello = Reptile.new("I have scales")
drako_malfoy = Reptile.new("I have scales")
turtle = Turtle.new("I have scales")
ssssnake = Snake.new("I have scales")
birdd = Animal.new
paulli = Bird.new("I have beak")
bird = Macaw.new("I have beak")
fish = Animal.new
nemo = Fish.new("swims")


p mammal.speak == "I am a Animal and I need oxigen"
p doggo.speak == "I am a Mammal and I need oxigen"
p doggo.warm_blooded? == true
p doggo_2.speak == "I am a Dog and I need oxigen"
p doggo_2.warm_blooded? == true
p doggo_2.bork == "When I watch another dog I go .... Rooffffffffffffaauahdufhyuh"
p cat.speak == "I am a Mammal and I need oxigen"
p cat.warm_blooded? == true
p cat_2.speak == "I am a Cat and I need oxigen"
p cat_2.warm_blooded? == true
p cat_2.pretty == "I'm the most beautiful animal that has ever existed"
p flipper.speak == "I am a Mammal and I need oxigen"
p flipper.warm_blooded? == true
p dolphin.speak == "I am a Dolphin and I need oxigen"
p dolphin.warm_blooded? == true
p dolphin.smartness == "I can help humans and fat useless whales"
p willy.speak == "I am a Mammal and I need oxigen"
p willy.warm_blooded? == true
p whale.speak == "I am a Whale and I need oxigen"
p whale.warm_blooded? == true
p whale.sing == "I can sing, but nobody can hear me"
p reptile.speak == "I am a Animal and I need oxigen"
p donnatello.speak == "I am a Reptile and I need oxigen"
p donnatello.has_scales? == true
p turtle.speak == "I am a Turtle and I need oxigen"
p turtle.has_scales? == true
p turtle.walks == "I wa l k   r  e   a  l   l  y    s    l     o      w "
p drako_malfoy.speak == "I am a Reptile and I need oxigen"
p drako_malfoy.has_scales? == true
p ssssnake.speak == "I am a Snake and I need oxigen"
p ssssnake.has_scales? == true
p ssssnake.slither == "Some people are afraid of me because I'm from zzzzzzzlitherin"
p birdd.speak == "I am a Animal and I need oxigen"
p paulli.speak == "I am a Bird and I need oxigen"
p paulli.has_beak? == true
p bird.speak == "I am a Macaw and I need oxigen"
p bird.has_beak? == true
p bird.poop == "I can poop above your head"
p fish.speak == "I am a Animal and I need oxigen"
p nemo.speak == "I am a Fish and I need oxigen"
p nemo.swims? == true






