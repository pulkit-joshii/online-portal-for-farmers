class CreateCompensations < ActiveRecord::Migration[6.1]
  def change
    create_table :compensations do |t|
      t.string :natcalname
      t.string :amount

      t.timestamps
    end
  end
end
