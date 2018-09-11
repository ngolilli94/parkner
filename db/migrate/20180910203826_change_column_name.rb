class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :parkings, :end_longitute, :end_longitude
  end
end
