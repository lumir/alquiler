items = [{:name => 'big_tables', :price => 2000, :units => 60}, {:name => 'chairs', :price => 500, :units => 700}, {:name => 'tables', :price => 500, :units => 60}, {:name => 'cloth_tables', :price => 1500, :units => 25}, {:name => 'special_cloth_tables', :price => 3000, :units => 30}]

items.each do |item|
  Item.create(item)
  p "item #{item[:name]} was added successfully"
end

admin = User.find_or_initialize_by_email("admin@alkiler.com")
admin.update_attributes(:username => "luis", :password => "3472938", :password_confirmation => "3472938")
p "admin loaded succesfully"