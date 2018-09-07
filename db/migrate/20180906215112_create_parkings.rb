class CreateParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :parkings do |t|
      t.boolean :active
      t.string :address
      t.string :start_latitude
      t.string :end_latitude
      t.string :start_longitude
      t.string :end_longitute
      t.datetime :move_by
      t.datetime :remind_at

      t.timestamps

      t.references :user
      t.references :car
    end
  end
end
