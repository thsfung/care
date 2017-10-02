class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|

    	t.string :firstname
    	t.string :lastname
    	t.string :primaryaddress
    	t.string :country
    	t.string :province
    	t.string :city
    	t.string :postalcode
    	t.string :workphone
    	t.string :extension
    	t.string :fax
    	t.string :email
    	t.string :specialization
	t.string :comments

      t.timestamps
    end
  end
end
