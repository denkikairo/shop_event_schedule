class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
