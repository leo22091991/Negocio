class AddExtraHourToSalaries < ActiveRecord::Migration[5.2]
  def change
    add_column :salaries, :extra_hour, :integer
  end
end
