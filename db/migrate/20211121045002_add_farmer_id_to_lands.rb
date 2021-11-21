class AddFarmerIdToLands < ActiveRecord::Migration[6.1]
  def change
    add_column :lands, :farmer_id, :integer
    add_index :lands, :farmer_id
  end
end
