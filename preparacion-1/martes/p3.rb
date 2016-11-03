def disemvowel (string)
  vowels = %w[a, e, i, o, u, A, E, I, O, U]


  stringarray = string.split("")

  resultarray = stringarray.map do |letter|
    if vowels.include? (letter) 
      "X"
    else
      letter 
    end
  end
  stringarray.join("")
  puts resultarray.inspect
  string
end

p disemvowel("abcdefghijklmnopqrstuvwxyz")