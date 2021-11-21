class CreateObasics < ActiveRecord::Migration[6.1]
  def change
    create_table :obasics do |t|
      t.integer :aadhar
      t.string :name
      t.string :dob
      t.string :gender
      t.string :address
      t.integer :pincode
      t.integer :mob_no

      t.timestamps
    end
  end
end
