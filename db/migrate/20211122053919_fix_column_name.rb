class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :nat_calamities, :type, :nctype
  end
end
