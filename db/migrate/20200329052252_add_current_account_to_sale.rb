class AddCurrentAccountToSale < ActiveRecord::Migration[5.2]
  def change
    add_reference :sales, :current_account, foreign_key: true
  end
end
