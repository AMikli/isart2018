class AddPriceToHousings < ActiveRecord::Migration[5.1]
  def change
    add_column :housings, :price_ve1, :integer
    add_column :housings, :price_ve2, :integer
    add_column :housings, :price_sa1, :integer
    add_column :housings, :price_sa2, :integer
  end
end
