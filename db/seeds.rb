items = [{:name => 'mesones', :price => 2000, :units => 60}, {:name => 'sillas', :price => 500, :units => 700}, {:name => 'mesitas', :price => 500, :units => 60}, {:name => 'mantel sencillo', :price => 1500, :units => 25}, {:name => 'mantel con faldillin', :price => 3000, :units => 30}]

items.each do |item|
  Item.create(item)
  p "item #{item[:name]} was added successfully"
end
