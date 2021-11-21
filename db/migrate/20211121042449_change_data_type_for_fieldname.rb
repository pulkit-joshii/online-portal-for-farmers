class ChangeDataTypeForFieldname < ActiveRecord::Migration[6.1]
  def self.up
    change_table :fbasics do |t|
      t.change :dob, :string
    end
  end
  def self.down
    change_table :dob do |t|
      t.change :dob, :date
    end
  end
end
