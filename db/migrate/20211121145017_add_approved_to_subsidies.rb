class AddApprovedToSubsidies < ActiveRecord::Migration[6.1]
  def change
    add_column :subsidies, :approved, :boolean, :default => 1
  end
end
