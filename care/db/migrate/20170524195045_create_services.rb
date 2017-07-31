class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|

    	t.float :cost
    	t.string :description
    	t.string :type
    	t.boolean :retire
	t.integer :visit_id

      t.timestamps
    end
  end
end
