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

  MAPPINGS = {
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
    '!' => 'Bang',
    '=' => 'equal',
    '@' => 'at',
    '_' => 'underscore',
    '%' => 'Percent',
    '~' => 'tilde',
    '4' => 'four',
  }  

  def translate
    code.map_with_index{|symbol, index|}
  end
end 

waka_code = WakaWaka.new(["<", ">", "!", "*", "'", "'", "#", "^", '"', "`", "$", "$", "-", "!", "*", "=", "@", "$", "_", "%", "*", "<", ">", "~", "#", "4"])
waka_code.translate
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