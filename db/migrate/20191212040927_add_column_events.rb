class AddColumnEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :description, :string
    remove_column :events, :end_time
  end
end
