class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :city
      t.string :state
      t.float :latitude
      t.float :longitude
      t.string :place_name

      t.timestamps null: false
    end
  end
end
