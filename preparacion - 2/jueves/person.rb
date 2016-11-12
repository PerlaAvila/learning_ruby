=begin
Crea la clase Person y define el método age que llame a un 
método para calcular la edad de la persona. 
Es necesario usar un método nativo de ruby que te ayude a obtener el año actual.
=end
class Person
  require 'Time'

  def initialize(name, birth_date)
    @name = name
    @birth_date = birth_date
  end
  def age
    "#{@name} is #{years_old} years old."
    
  end

  private
  def years_old
    Time.now.year - Time.parse(@birth_date).year
  end  

end

carlos = Person.new("Carlos", "May 1986")
martha = Person.new("Martha", "Oct 1990")
#test
p carlos.age == "Carlos is 30 years old."
# #=>true
p martha.age == "Martha is 26 years old."
#=>true

p carlos.years_old
#=>private method `years_old'...(NoMethodError)