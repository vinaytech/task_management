class OrderItem < ApplicationRecord
	belongs_to :order
	belongs_to :store_item
end
