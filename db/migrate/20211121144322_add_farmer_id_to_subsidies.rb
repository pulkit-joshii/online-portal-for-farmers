class AddFarmerIdToSubsidies < ActiveRecord::Migration[6.1]
  def change
    add_column :subsidies, :farmer_id, :integer
    add_index :subsidies, :farmer_id
  end
end
