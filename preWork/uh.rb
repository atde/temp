def join_hash
 new_hash = {}
 fruit = {name: "pineapple"}
 weight = {weight: "1 kg"}
 taste = {taste: "good"}
 fruit.each do |fruta|
  weight.each do |peso|
    taste.each do |sabor|
      new_hash << fruta << peso << sabor
    end
  end
 end
new_hash
end


#test
p join_hash(fruit, weight, taste) #== {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"} 