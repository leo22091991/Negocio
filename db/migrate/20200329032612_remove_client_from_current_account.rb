class RemoveClientFromCurrentAccount < ActiveRecord::Migration[5.2]
  def change
    remove_reference :current_accounts, :client, foreign_key: true
  end
end
