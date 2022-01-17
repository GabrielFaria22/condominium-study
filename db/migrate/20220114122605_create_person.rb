class CreatePerson < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :type
      t.string :name
      t.string :gender
      t.integer :age
      t.string :phone_1
      t.string :phone_2
      t.string :whatsapp
      t.string :social_network_1
      t.string :social_network_2
      t.string :email
      t.string :address
      t.string :bank_account
      t.string :document_1
      t.string :document_2
      t.string :profession
      t.string :real_estate
      t.string :real_estate_contact
      t.text :observation
      t.references :apartment, foreign_key: true
      t.references :vehicle, foreign_key: true
    end
  end
end
