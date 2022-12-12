class CreateTaxes < ActiveRecord::Migration[6.1]
  def change
    create_table :taxes do |t|
      t.float :percentage
      t.string :tax_type
      t.boolean :status

      t.timestamps
    end
  end
end
