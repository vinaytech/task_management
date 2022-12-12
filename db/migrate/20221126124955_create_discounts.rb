class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.string :discount_name
      t.integer :discount_type_id
      t.string :discount_message
      t.float :percentage
      t.float :amount
      t.boolean :is_bogo_free
      t.string :bogo_store_item_ids
      t.boolean :status

      t.timestamps
    end
  end
end
