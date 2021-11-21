class CreateLands < ActiveRecord::Migration[6.1]
  def change
    create_table :lands do |t|
      t.string :surveyno
      t.string :area
      t.string :village
      t.string :agrioffice
      t.string :district
      t.string :ownershiptype

      t.timestamps
    end
  end
end
