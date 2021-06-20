class AddDniToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :dni, :string
  end
end
