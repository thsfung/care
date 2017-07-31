class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|

    	t.float :amtdue
    	t.string :type
    	t.float :amtpaid
	t.integer :invoice_id

      t.timestamps
    end
  end
end
