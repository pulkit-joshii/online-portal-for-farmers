class AddApprovedToInsurances < ActiveRecord::Migration[6.1]
  def change
    add_column :insurances, :approved, :boolean, :default => 1
  end
end
