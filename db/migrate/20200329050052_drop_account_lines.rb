class DropAccountLines < ActiveRecord::Migration[5.2]
  def change
  	drop_table :account_lines do |t|
      t.float :total, null: false
      t.integer :sale_id, null: false
      t.integer :current_account_id, null: false
      t.timestamps null: false
  	end	
  end
end
