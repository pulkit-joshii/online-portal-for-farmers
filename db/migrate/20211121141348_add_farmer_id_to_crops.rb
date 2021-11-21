class AddFarmerIdToCrops < ActiveRecord::Migration[6.1]
  def change
    add_column :crops, :farmer_id, :integer
    add_index :crops, :farmer_id
  end
end
