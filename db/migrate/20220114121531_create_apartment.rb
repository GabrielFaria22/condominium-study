class CreateApartment < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.integer :number
      t.text :observation
      t.references :parking_spaces, foreign_key: true, index: true, null: false
    end
  end
end
