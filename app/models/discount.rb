class Discount < ApplicationRecord
	belongs_to :discount_type
	has_many :store_items
	serialize :bogo_store_item_ids
	def discount_detail
	  if discount_type.name == "Percentage"	
	  	 return percentage
	  end 
	  if discount_type.name == "Fixed amount"
	     return amount	
	  end 	
	  if discount_type.name == "Buy X get Free"	
	  	 return amount	
	  end 	
	end

end
