def languages(speak)
  languages = {"JavaScript" => "JavaScript", "CSS" => "CSS", "C++" => "C++", "Python" => "Python", "R" => "R", "Unity" => "Unity", 
               "Ruby" => "Ruby", "Ruby on Rails" => "Ruby on Rails", "Java" => "Java"}
  languages.each do |key, value|
    return "I like #{value}" if key == speak 
  end
  "I don't like to code"
end

p languages("JavaScript") == "I like JavaScript"
p languages("Unity") == "I like Unity"
p languages("Swin") == "I don't like to code"
