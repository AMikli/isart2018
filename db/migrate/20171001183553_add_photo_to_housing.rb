class AddPhotoToHousing < ActiveRecord::Migration[5.1]
  def change
    add_column :housings, :photo, :string
  end
end
