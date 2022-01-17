class CreateParkingSpace < ActiveRecord::Migration[5.2]
  def change
    create_table :parking_spaces do |t|
      t.integer :number
      t.text :observation
    end
  end
end
