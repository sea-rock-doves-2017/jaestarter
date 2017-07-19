class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :amount_donated, null: false
      t.integer :goal_amount, null: false
      t.datetime :end_date, null: false

      t.timestamps
    end
  end
end
