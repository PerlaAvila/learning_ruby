def shopping(list)
basket_shopping = nil ? basket_shopping.empty? : basket_shopping = list.join(", ") 
end

#test
p shopping(["eggs", "milk", "bread", "orange juice"]) == "eggs, milk, bread, orange juice"
