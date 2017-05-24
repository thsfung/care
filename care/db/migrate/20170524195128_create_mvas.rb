class CreateMvas < ActiveRecord::Migration[5.0]
  def change
    create_table :mvas do |t|

    	t.string :holdername
    	t.date :holderbday
    	t.integer :adjustorphone
    	t.integer :claimnumber
    	t.string :relationshiptoclient
    	t.string :adjustorname
    	t.integer :branchnumber
    	t.string :company

      t.timestamps
    end
  end
end
