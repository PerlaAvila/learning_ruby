def multiplication_tables(num)
   (1..num).each do |a|
     (1..10).each do |b|
        solve = a * b
        printf "%3s", solve
      end
      puts
   end
end

multiplication_tables(5)
puts
multiplication_tables(7)