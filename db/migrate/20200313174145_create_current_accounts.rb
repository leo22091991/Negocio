class CreateCurrentAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :current_accounts do |t|
      t.float :total
      t.references :cliente, foreign_key: true
      t.references :account_status, foreign_key: true

      t.timestamps
    end
  end
end
