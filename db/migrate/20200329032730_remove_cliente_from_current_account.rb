class RemoveClienteFromCurrentAccount < ActiveRecord::Migration[5.2]
  def change
    remove_reference :current_accounts, :cliente, foreign_key: true
  end
end
