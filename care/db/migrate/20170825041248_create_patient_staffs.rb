class CreatePatientStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_staffs do |t|
      t.references :patient, foreign_key: true
      t.references :staff, foreign_key: true

      t.timestamps
    end
  end
end
