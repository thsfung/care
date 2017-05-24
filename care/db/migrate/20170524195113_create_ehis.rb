class CreateEhis < ActiveRecord::Migration[5.0]
  def change
    create_table :ehis do |t|

    	t.string :company
    	t.string :holdername
    	t.date :holderbday
    	t.string :relationshiptoclient

      t.timestamps
    end
  end
end
