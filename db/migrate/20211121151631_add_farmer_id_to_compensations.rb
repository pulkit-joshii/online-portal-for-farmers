class AddFarmerIdToCompensations < ActiveRecord::Migration[6.1]
  def change
    add_column :compensations, :farmer_id, :integer
    add_index :compensations, :farmer_id
  end
end
