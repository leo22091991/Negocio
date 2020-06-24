class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :description
      t.float :total

      t.timestamps
    end
  end
end
