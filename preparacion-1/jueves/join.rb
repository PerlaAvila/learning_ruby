fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}

def join_hash(fruit, weight, taste)
  new_hash = Hash.new
   fruit.update(weight).each do |k, v|
    new_hash[k] = v
   end 
   new_hash.update(taste)
end

#test
p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"} 


