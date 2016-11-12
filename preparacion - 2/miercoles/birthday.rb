=begin
Modifica el código de la clase Person y también el código que necesites 
cambiar de las pruebas, excepto las partes indicadas 
que no deben modificarse. Haz pasar las pruebas correspondientes.
=end
class Person

  @@age = 0

  def initialize(age)
    @@age = age
  end

  def age
    @@age
  end

  def age=(new_age)
    @@age = new_age
  end
  #no modificar este método de clase
  def self.birthday
    @@age += 1
  end
end

alice = Person.new(16)

#test
alice.age = 17
p alice.age == 17
#=> true
p Person.birthday == 18
#=> true