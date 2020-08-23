class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :dni
      t.string :last_name
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
