class ChangeDataTypeForFieldname < ActiveRecord::Migration[6.1]
  def self.up
    change_column :fbasics, :dob, :string
  end
  def self.down
    change_column :fbasics, :dob, :date
  end
end
