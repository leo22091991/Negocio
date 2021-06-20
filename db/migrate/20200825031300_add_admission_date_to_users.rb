class AddAdmissionDateToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admission_date, :date
  end
end
