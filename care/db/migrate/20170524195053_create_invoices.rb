class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|

    	t.date :issuedate
    	t.float :outstandingamt
    	t.integer :patient_id

      t.timestamps
    end
  end
end
