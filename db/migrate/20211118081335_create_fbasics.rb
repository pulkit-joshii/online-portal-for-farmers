class CreateFbasics < ActiveRecord::Migration[6.1]
  def change
    create_table :fbasics do |t|
      t.string :aadhar
      t.string :name
<<<<<<< HEAD
      t.string :dob
=======
      t.date :dob
>>>>>>> 042adaaebd7fc18cda872e53c775a76ff3a5229c
      t.string :gender
      t.string :address
      t.string :pincode
      t.string :mobno

      t.timestamps
    end
  end
end
