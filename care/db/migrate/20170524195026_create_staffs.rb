class CreateStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :staffs do |t|

    	t.string :firstname
    	t.string :lastname
    	t.integer :sinnumber
    	t.string :primaryaddress
    	t.string :secondaryaddress
    	t.string :country
    	t.string :province
    	t.string :city
    	t.string :postalcode
    	t.integer :homephone
    	t.integer :cellphone
    	t.string :type

      t.timestamps
    end
  end
end