class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.decimal :item_total
      t.float :discount
      t.float :tax
      t.decimal :final_total
      t.datetime :delivered_time
      t.string :order_status
      t.timestamps
    end
  end
end
