class CreateFbasics < ActiveRecord::Migration[6.1]
  def change
    create_table :fbasics do |t|
      t.string :aadhar
      t.string :name
      t.string :dob
      t.string :gender
      t.string :address
      t.string :pincode
      t.string :mobno

      t.timestamps
    end
  end
end
