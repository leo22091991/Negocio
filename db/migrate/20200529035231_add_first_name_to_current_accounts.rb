class AddFirstNameToCurrentAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :current_accounts, :first_name, :string
  end
end
