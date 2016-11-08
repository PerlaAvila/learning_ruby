
strings = ["ruby", "java", "c++", "javascript"]
char_upcase = lambda { |char| char.capitalize}
p symbols = strings.collect(&char_upcase)