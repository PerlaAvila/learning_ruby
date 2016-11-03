def vowels(letters)
  chars = letters.chars
  vowels = %w[a e i o u A E I O U]
  count = 0

  chars.each do |char|
    vowels.each do |vowel|
      if char == vowel
        count += 1
        break
      end #if
    end #each
  end
  count
end

p vowels("hello") == 2
p vowels("Magic") == 2
p vowels("Apologize") == 5