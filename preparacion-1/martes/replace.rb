def replace_vowels(array)

    array.each do |word|
     word.gsub!(/[aeiou]/, 'x')
    end #do

   end
  p replace_vowels(["banana", "apple"]) == ["bxnxnx", "xpplx"]