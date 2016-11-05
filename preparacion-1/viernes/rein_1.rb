def fizzbuzz(min, max)
  super_array = Array.new
   (min..max).each do |num|
     if num % 5 == 0 and num % 3 == 0 ; super_array << "FizzBuzz"
     elsif num % 5 == 0 ; super_array << "Buzz"
     elsif num % 3 == 0 ; super_array << "Fizz"
     else ; super_array << num
     end
  end
 super_array
end

# test
p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]