class RemoveCartFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :cart, foreign_key: true
  end
end
