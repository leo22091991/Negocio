class AddTypeToAssets < ActiveRecord::Migration[5.2]
  def change
    add_reference :assets, :type, foreign_key: true
  end
end
