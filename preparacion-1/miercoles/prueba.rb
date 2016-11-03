def multiplication_tables(num)
   (1..num).each do
   (1..10).each do
      solve = i * j
      print "#{solve}\t"
    end
    puts "\n"
  end
end

p multiplication_tables(5)
p multiplication_tables(6)








