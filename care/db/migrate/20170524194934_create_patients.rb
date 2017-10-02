class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|

    	t.string :firstname
    	t.string :lastname
    	t.string :email
    	t.date :birthday
    	t.string :sex
    	t.string :homephone
    	t.string :cellphone
    	t.string :workphone
    	t.string :extension
    	t.string :primaryaddress
    	t.string :secondaryaddress
    	t.string :country
    	t.string :province
    	t.string :city
    	t.string :postalcode
	t.string :comments

      t.timestamps
    end
  end
end
