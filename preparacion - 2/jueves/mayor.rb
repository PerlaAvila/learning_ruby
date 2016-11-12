=begin
Define los métodos private y protected para calcular la edad del gato, 
así como también agrega el código que se necesita para que la prueba 
correspondiente sea true. Revisa la documentación correspondiente.
=end
class Cat
  CAT_YEARS = 7
  def initialize(age)
    @age = age ; end

  def es_mayor_que?(cat)
    (cat_age > cat.cat_age) ? true : false ; end

  protected
 
  def cat_age
    @age * CAT_YEARS ; end
  
  private

  def age
    @age ; end
end

#test
katty = Cat.new(2)
peto = Cat.new(4)
p katty.es_mayor_que?(peto) == false
#=>true
