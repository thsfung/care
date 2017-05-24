class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|

    	t.date :issuedate
    	t.float :outstandingamt

      t.timestamps
    end
  end
end
