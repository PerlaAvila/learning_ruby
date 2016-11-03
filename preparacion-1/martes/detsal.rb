def payment_method(payment)
 if payment.include? "Visa" 
    "Credit Card has been Charged"
 else 
    "We only accept visa credit card"
 end
end
p payment_method("Welcome your Visa Credit Card has been processed") == "Credit Card has been Charged"




def saludo(name, age)
 if name == "Perla" 
    age == 18..99
   "Welcome"
 else
  "No eres mayor de edad"
 end
end
p saludo("Perla", 27) == "Welcome"
p saludo("Jorge", 17) == "No eres mayor de edad"