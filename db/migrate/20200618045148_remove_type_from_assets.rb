class RemoveTypeFromAssets < ActiveRecord::Migration[5.2]
  def change
    remove_reference :assets, :type, foreign_key: true
  end
end
