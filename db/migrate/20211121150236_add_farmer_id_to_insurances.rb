class AddFarmerIdToInsurances < ActiveRecord::Migration[6.1]
  def change
    add_column :insurances, :farmer_id, :integer
    add_index :insurances, :farmer_id
  end
end
