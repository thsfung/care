class CreatePaymethods < ActiveRecord::Migration[5.0]
  def change
    create_table :paymethods do |t|

      t.string :paytype

      t.string :company
      t.string :holdername
  	  t.date :holderbday
      t.string :relationshiptoclient

      t.string :adjustorphone
      t.integer :claimnumber
      t.string :adjustorname
      t.integer :branchnumber

      t.integer :patient_id

      t.timestamps
    end
  end
end
