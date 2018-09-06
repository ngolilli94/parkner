class CreateParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :parkings do |t|
      t.boolean :active
      t.string :address
      t.string :latitude
      t.string :longitute
      t.datetime :move_by
      t.datetime :remind_at

      t.timestamps
    end
  end
end
