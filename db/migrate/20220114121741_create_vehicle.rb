class CreateVehicle < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :type
      t.string :brand
      t.string :model
      t.string :color
      t.text :observation
      t.references :parking_spaces, foreign_key: true
      t.references :apartment, foreign_key: true
    end
  end
end
