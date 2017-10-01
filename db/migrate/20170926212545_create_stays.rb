class CreateStays < ActiveRecord::Migration[5.1]
  def change
    create_table :stays do |t|
      t.string :type
      t.date :go_date
      t.date :return_date
      t.boolean :carpooling_offer
      t.boolean :group_offer
      t.references :guest, foreign_key: true

      t.timestamps
    end
  end
end
