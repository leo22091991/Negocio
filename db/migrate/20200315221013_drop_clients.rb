class DropClients < ActiveRecord::Migration[5.2]
  def change
  	drop_table :clients do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :addres, null: false
      t.string :phone, null: false
      t.timestamps null: false
    end
  end
end
