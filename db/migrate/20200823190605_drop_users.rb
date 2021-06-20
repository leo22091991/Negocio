class DropUsers < ActiveRecord::Migration[5.2]
  def change
  	drop_table :users do |t|
      t.integer :dni, null: false
      t.string :last_name, null: false
      t.string :name, null: false
      t.string :phone, null: false
      t.timestamps null: false
    end
  end
end
