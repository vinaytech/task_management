class CreateStoreItemTags < ActiveRecord::Migration[6.1]
  def change
    create_table :store_item_tags do |t|
      t.integer :store_item_id
      t.integer :discount_id

      t.timestamps
    end
  end
end
