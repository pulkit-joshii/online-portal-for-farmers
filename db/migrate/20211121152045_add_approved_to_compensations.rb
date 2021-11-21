class AddApprovedToCompensations < ActiveRecord::Migration[6.1]
  def change
    add_column :compensations, :approved, :boolean, :default => 1
  end
end
