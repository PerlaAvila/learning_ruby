array = [1, 2, 3, 4, 5, 6, 7, 8]
arr = []
 result = array.each do |x|
  x += 20

 arr.push(x)
end

p arr
 


