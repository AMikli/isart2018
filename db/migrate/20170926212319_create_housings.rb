class CreateHousings < ActiveRecord::Migration[5.1]
  def change
    create_table :housings do |t|
      t.string :address
      t.integer :zip_code
      t.string :name
      t.string :phone
      t.string :country

      t.timestamps
    end
  end
end
