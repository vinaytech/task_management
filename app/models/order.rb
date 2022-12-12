class Numeric
  def percent_of(n)
    self.to_f / n.to_f * 100.0
  end
end
class Order < ApplicationRecord
	attr_accessor :user_identity
	belongs_to :user
	has_many :order_items
	has_many :store_items, through: :order_items

	def calculation_order
		temp_total_price = 0.0
		temp_total_final_price = 0.0
		temp_discount_price = 0.0
		temp_tax_price = 0.0
		self.item_total = 0.0
		self.final_total = 0.0
		self.tax = 0.0
		order_items.each do |item|
		   self.item_total = self.item_total + item.store_item.price	
		   temp_total_price = 0.0
           discount_value = nil
		   if item.store_item.discount
		   	  if item.store_item.discount.discount_type.name == "Percentage"
		   	  	 discount_value = item.store_item.discount.percentage.percent_of(item.store_item.price) 
		   	  end 
		   	  if item.store_item.discount.discount_type.name == "Fixed amount"
		   	  	 discount_value = item.store_item.discount.amount
		   	  end
		   	  if item.store_item.discount.discount_type.name == "Buy X get Free"
		   	  end  	
		   end	

		   if discount_value
		   	  temp_total_price = item.store_item.price - discount_value
		   	  self.discount = self.discount + discount_value
		   end 	

           if item.store_item.tax
           	  tax_value = item.store_item.tax.percentage.percent_of(temp_total_price)
           	  temp_total_price = temp_total_price + tax_value
           	  self.tax = self.tax + tax_value
           end 	
           self.final_total = self.final_total + temp_total_price
	    end	

        self.save
	end

end
