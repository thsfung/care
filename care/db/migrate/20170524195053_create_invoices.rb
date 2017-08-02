class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|

    	t.date :issuedate
    	t.float :outstandingamt
    	t.integer :patient_id
	t.string :comments
	t.boolean :marked

      t.timestamps
    end
  end
end
