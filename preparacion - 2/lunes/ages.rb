def total_between_age(ages, min_age, max_age)
  counter = 0
  ages.each do |age| 
    counter += 1 if age >= min_age && age <= max_age
  end
  counter
end

# Pruebas
p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4