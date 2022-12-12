class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :user_id
      t.integer :store_item_id
      t.integer :order_id
      t.timestamps
    end
  end
end
