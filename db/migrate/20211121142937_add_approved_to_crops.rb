class AddApprovedToCrops < ActiveRecord::Migration[6.1]
  def change
    add_column :crops, :approved, :boolean, :default => 1
  end
end
