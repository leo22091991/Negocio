class AddLastNameToCurrentAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :current_accounts, :last_name, :string
  end
end
