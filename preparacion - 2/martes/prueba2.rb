class WakaWaka
  def initialize(code); 
    @code = code
  end  
  def translate 
    hash_waka = {
    "<" => "Waka", 
    ">"  => "waka",    
    "'" => "tick", 
    "#" => "hash",     
    "^" => "Caret", 
    "\""=> "quote",
    "`" => "back-tick", 
    "$" => "dollar",  
    "-" => "dash",
    "!" => "Bang", 
    "*" => "splat", 
    "=" => "equal", 
    "@" => "at",  
    "_" => "underscore",
    "%" => "Percent", 
    "~" => "tilde", 
    "4" => "four"}
    puts
    @code.each do |x|
        print "#{x}\t"
    end
    puts
    @code.each do |y|
        hash_waka.each do |llave,valor|
            if valor.length > 7 
                if llave == y && @code.last == y
                  print "#{valor},"
                elsif llave == y && @code.last != y
                  print "#{valor}\t"
                else              
                end
            else 
                if llave == y && @code.last == y
                  print "#{valor},"
                elsif llave == y && @code.last != y
                  print "#{valor}\t"
                else              
                end 
            end
        end
    end
    puts
   end   
   end 
cod_Wakawaka1 = WakaWaka.new(["<", ">", "!", "*", "'", "\'", "#"])
cod_Wakawaka2 = WakaWaka.new(["^", "\"","`", "$", "$", '-'])
cod_Wakawaka3 = WakaWaka.new(["!", "*", "=", "@", "$", "_"])
cod_Wakawaka4 = WakaWaka.new(["%", "*", "<", ">", "~", "#", "4"])
cod_Wakawaka1.translate 
cod_Wakawaka2.translate 
cod_Wakawaka3.translate 
cod_Wakawaka4.translate 