class CreateUserPermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_permissions do |t|
      t.string :description

      t.timestamps
    end
  end
end
