class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|

    	t.date :visitdate
    	t.integer :patient_id
    	t.integer :invoice_id

      t.timestamps
    end
  end
end
