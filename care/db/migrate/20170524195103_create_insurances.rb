class CreateInsurances < ActiveRecord::Migration[5.0]
  def change
    create_table :insurances do |t|

    	t.integer :policynumber
    	t.string :type
    	t.date :dateofloss
	t.integer :patient_id

      t.timestamps
    end
  end
end
