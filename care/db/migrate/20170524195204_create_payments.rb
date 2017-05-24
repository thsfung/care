class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|

    	t.integer :amtdue
    	t.string :type
    	t.integer :amtpaid

      t.timestamps
    end
  end
end
