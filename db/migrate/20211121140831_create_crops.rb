class CreateCrops < ActiveRecord::Migration[6.1]
  def change
    create_table :crops do |t|
      t.string :surveyno
      t.string :name
      t.string :area

      t.timestamps
    end
  end
end
