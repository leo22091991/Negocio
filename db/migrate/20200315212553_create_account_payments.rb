class CreateAccountPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :account_payments do |t|
      t.float :total
      t.references :current_account, foreign_key: true

      t.timestamps
    end
  end
end
