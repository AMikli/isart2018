class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :zip_code
      t.string :country

      t.timestamps
    end
  end
end
