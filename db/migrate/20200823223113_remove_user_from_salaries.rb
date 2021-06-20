class RemoveUserFromSalaries < ActiveRecord::Migration[5.2]
  def change
    remove_reference :salaries, :user, foreign_key: true
  end
end
