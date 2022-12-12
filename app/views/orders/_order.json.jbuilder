json.extract! order, :id, :user_id, :item_total, :discount, :tax, :final_total, :created_at, :updated_at
json.url order_url(order, format: :json)
