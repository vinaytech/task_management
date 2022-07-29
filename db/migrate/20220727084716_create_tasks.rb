class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :due_date
      t.integer :status
      t.text :notes

      t.timestamps
    end
  end
end
