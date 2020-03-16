class CreateAccountLines < ActiveRecord::Migration[5.2]
  def change
    create_table :account_lines do |t|
      t.float :total
      t.references :sale, foreign_key: true
      t.references :current_account, foreign_key: true

      t.timestamps
    end
  end
end
