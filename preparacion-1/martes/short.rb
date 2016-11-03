def shortest(array)
   
  ar = [] 
  if array.empty?
    nil
  else
   tam=0  
   result = array.min_by(&:length)
   array.each do |palabra|
         
         if result.length == palabra.length
         

            ar << palabra 

         end 
      end #each 
  end #if principal 
    ar 
end

p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco']) == ["uno", "dos"]
p shortest(['gato', 'perro', 'elefante', 'jirafa']) == ["gato"]
p shortest(['verde', 'rojo', 'negro', 'morado']) == ["rojo"]