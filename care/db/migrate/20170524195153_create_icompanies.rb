class CreateIcompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :icompanies do |t|

    	t.string :name

      t.timestamps
    end
  end
end
