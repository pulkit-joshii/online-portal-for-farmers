class AddApprovedToLands < ActiveRecord::Migration[6.1]
  def change
    add_column :lands, :approved, :boolean, :default => 1
  end
end
