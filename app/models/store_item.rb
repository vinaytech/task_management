class StoreItem < ApplicationRecord
	belongs_to :item_category
	belongs_to :tax
	belongs_to :discount, optional: true
	has_many :order_items
	has_many :orders, through: :order_items

	def item_details
    "#{name}. Tax => #{tax.percentage}, Discount => #{discount&.discount_type&.name} #{discount&.discount_detail}"
    end
end
