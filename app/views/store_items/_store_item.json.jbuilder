json.extract! store_item, :id, :name, :price, :item_category_id, :created_at, :updated_at
json.url store_item_url(store_item, format: :json)
