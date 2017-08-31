class PatientStaff < ApplicationRecord
  belongs_to :patient, :foreign_key => "patient_id"
  belongs_to :staff, :foreign_key => "staff_id"
end
