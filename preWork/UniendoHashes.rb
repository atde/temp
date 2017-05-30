def join_hash(h1, h2, h3)
 h_nuevo = Hash.new
  h1.each do |key| 
    h2.each do |k|
      h3.each do |clave|
        h_nuevo << key << k << clave 

  end
end

fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}

#test
p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"} 