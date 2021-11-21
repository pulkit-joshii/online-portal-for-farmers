class CreateNatCalamities < ActiveRecord::Migration[6.1]
  def change
    create_table :nat_calamities do |t|
      t.string :name
      t.string :type
      t.string :month
      t.string :year

      t.timestamps
    end
  end
end
