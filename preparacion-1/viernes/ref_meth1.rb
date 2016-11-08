def check?
  (true || false == true && false)? "true" : "false"
end

#test
p check? == "true" 