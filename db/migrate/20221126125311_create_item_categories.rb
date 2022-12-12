class CreateItemCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :item_categories do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
