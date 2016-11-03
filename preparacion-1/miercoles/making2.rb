def array_index(array_of_letters, factor)
  master_array = Array.new

  array_of_letters.each do |char|
    factor_array = Array.new

    counter = 1
    factor.times do factor_array.push(counter)
      counter += 1
    end

    master_array.push([char, factor_array])
  end

  master_array
end

# tests
p array_index(["c", "b", "a"], 2) == [["c", [1, 2]], ["b", [1, 2]], ["a", [1, 2]]]
p array_index(["a"], 3) == [["a", [1, 2, 3]]]
