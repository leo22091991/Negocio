class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.string :description
      t.string :total
      t.float :percentage

      t.timestamps
    end
  end
end
