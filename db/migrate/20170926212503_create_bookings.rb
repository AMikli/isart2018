class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :beds
      t.references :guest, foreign_key: true
      t.references :housing, foreign_key: true

      t.timestamps
    end
  end
end
