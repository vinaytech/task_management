class CreateStoreItems < ActiveRecord::Migration[6.1]
  def change
    create_table :store_items do |t|
      t.string :name
      t.decimal :price
      t.integer :item_category_id
      t.integer :tax_id
      t.integer :discount_id
      t.timestamps
    end
  end
end
