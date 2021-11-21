class CreateSubsidies < ActiveRecord::Migration[6.1]
  def change
    create_table :subsidies do |t|
      t.string :surveyno
      t.string :cropname
      t.string :amount

      t.timestamps
    end
  end
end
