name = "perla"
p name.upcase
p name.chr

p name.count "per"
p name.count "la"
p name.count "p", "l-y"

p name.empty?

p name.sub(/[aeiou]/, '$')
p name.sub(/([prl])/, '<\1>')

p "gatos feos".gsub "feos", "bonitos"

p name.include? "ra"
p name.include? "per"
p name.include? ?a


p name.index('p')
p name.index('er')
p name.index('l')
p name.index(/[aeiou]/, -2)

p name.reverse

p "beautiful kitty cats".split(/ /)
p "beautiful kitty cats".split(%r{, \s*})
p "beautiful kitty cats".split(//, 10)

p "    die bartttttt    ".strip
p "\beautiful cats\h\j\j".strip