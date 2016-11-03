def array_index(array_of_letters, factor)
  master_array = Array.new
  counter = 1

  array_of_letters.each do |char|
    factor.times do
      master_array.push([char, counter])
      counter += 1
    end
    counter = 1
  end

  master_array
end


#test
p array_index(["c", "b", "a"], 2) #== [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
p array_index(["a"], 3) #== [["a", 1], ["a", 2], ["a", 3]]
