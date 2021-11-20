class AddFarmerIdToFbasics < ActiveRecord::Migration[6.1]
  def change
    add_column :fbasics, :farmer_id, :integer
    add_index :fbasics, :farmer_id
  end
end
