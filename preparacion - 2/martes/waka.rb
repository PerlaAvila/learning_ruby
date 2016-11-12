=begin
Dado el siguiente código Waka Waka...
< > ! * ' ' #
^ " ` $ $ -
! * = @ $ _
% * < > ~ # 4
Crea la clase WakaWaka con los siguientes métodos:
=end

class WakaWaka

  def initialize(code)
    @code = code
  end

  MEAN = {
    '<' => 'Waka',
    '>' => 'waka',
    '!' => 'bang',
    "'" => 'tick',
    '#' => 'hash',
    '^' => 'Caret',
    '"' => 'quote',
    '`' => 'back-tick',
    '$' => 'dollar',
    '-' => 'dash',
    '=' => 'equal',
    '@' => 'at',
    '_' => 'underscore',
    '%' => 'Percent',
    '~' => 'tilde',
    '4' => 'four',
  }  

  def translate
   yield
  end


    print ["<", ">", "!", "*", "'", "'", "#"].join("%-9s")
    print "Waka      waka      bang      splat     tick      tick      hash"
    print 
  end
end 

code_1 = WakaWaka.new(["<", ">", "!", "*", "'", "'", "#", "^", '"', "`", "$", "$", "-", "!", "*", "=", "@", "$", "_", "%", "*", "<", ">", "~", "#", "4"])
p waka_code.translate
#WakaWaka#translate, imprime el código waka waka traducido y formateado como en el siguiente ejemplo:
=begin
waka_code.translate
#=>
<         >         !         *         '         '         #         
Waka      waka      bang      splat     tick      tick      hash,
^         "         `         $         $         -         
Caret     quote     back-tick dollar    dollar    dash,
!         *         =         @         $         _         
Bang      splat     equal     at        dollar    underscore,
%         *         <         >         ~         #         4         
Percent   splat     Waka      waka      tilde     hash      four,
=end