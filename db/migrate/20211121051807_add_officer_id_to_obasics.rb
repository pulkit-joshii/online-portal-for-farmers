class AddOfficerIdToObasics < ActiveRecord::Migration[6.1]
  def change
    add_column :obasics, :officer_id, :integer
    add_index :obasics, :officer_id
  end
end
