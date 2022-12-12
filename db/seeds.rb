# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["Hot", "Cold", "Speciality"].each do |item|
   ItemCategory.create(:name => item, :status => true)
end


["VAT", "Loval Gov"].each do |item|
   Tax.create(:tax_type => item, :percentage => 12.8)
end

["Espresso", "Latte", "Iced Coffee", "Bagels", "Donuts", "Croissant", "Breakfast Sandwich", "Breakfast Pizza", "Cupcakes", "Macarons", "Pepsi", "Sprite", "Thums Up", "Fanta", "Maaza", "Cola"].each do |item|
	StoreItem.create(:name => item, :price => 88.5, :item_category_id => 1, :tax_id => 1)
end


["Percentage", "Fixed amount", "Buy X get Free"].each do |item|
   DiscountType.create(:name => item, :status => true)
end


DiscountType.all.each do |discount_type|
     if discount_type.name == "Percentage"  
        Discount.create(:discount_name => discount_type.name, :discount_type_id => discount_type.id, :percentage => 10, :status => true)
     end 
     if discount_type.name == "Fixed amount"
        Discount.create(:discount_name => discount_type.name, :discount_type_id => discount_type.id, :amount => 100, :status => true)
     end    
     if discount_type.name == "Buy X get Free"  
       Discount.create(:discount_name => discount_type.name, :discount_type_id => discount_type.id, :is_bogo_free => true, :status => true, :bogo_store_item_ids => [1,2,4])
     end    

   
end