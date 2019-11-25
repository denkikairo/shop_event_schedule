class AddColumnShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :name, :string
    add_column :shops, :address, :string
    add_column :shops, :latitude, :float
    add_column :shops, :longitude, :float
  end
end
