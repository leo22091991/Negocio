class AddCurrentAccuntToCarts < ActiveRecord::Migration[5.2]
  def change
    add_reference :carts, :current_account, foreign_key: true
  end
end
