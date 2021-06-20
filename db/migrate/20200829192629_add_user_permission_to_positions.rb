class AddUserPermissionToPositions < ActiveRecord::Migration[5.2]
  def change
    add_reference :positions, :user_permission, foreign_key: true
  end
end
