def modes(array)
histogram = array.inject(Hash.new(0)) { |h, n| h[n] += 1; h }
modes = nil
histogram.each_pair do |item, times|
modes << item if modes && times == modes[0] and find_all
modes = [times, item] if (!modes && times>1) or (modes && times>modes[0])
end
return modes ? modes[1…modes.size] : modes
end

p modes([1,2,3,4]) # => nil
p modes([1,1,2,3,4]) # => [1]
p modes([1,1,2,2,3,4]) # => [1, 2]
p modes([1,1,2,2,3,4,4]) # => [1, 2, 4]
p modes([1,1,2,2,3,4,4], false) # => [1]
p modes([1,1,2,2,3,4,4,4,4,4]) # => [4]