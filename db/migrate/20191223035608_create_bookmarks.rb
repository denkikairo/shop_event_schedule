class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.references :event, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
      t.index [:event_id, :player_id], unique: true
    end
  end
end
