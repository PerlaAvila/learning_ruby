#Dado el siguiente código...
class Asignature 
  def math
    "Mathematics" ; end
end
asignature = Asignature.new

#Y el siguiente mensaje de error...

#=> private method `math' called for #<Asignature:0x8d483cc> (NoMethodError)
#¿Qué harías para solucionarlo? Haz pasar la siguiente prueba:

p asignature.math == "Mathematics"
#=>true
