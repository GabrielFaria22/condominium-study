class CreateEvent < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.references :person, foreign_key: true
      t.references :apartment, foreign_key: true
      t.references :parking_space, foreign_key: true
    end
  end
end
