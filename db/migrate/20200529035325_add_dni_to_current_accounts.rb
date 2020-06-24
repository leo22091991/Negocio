class AddDniToCurrentAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :current_accounts, :dni, :int
  end
end
