class PatientDoctor < ApplicationRecord

	belongs_to :patient, :foreign_key => "patient_id"
	belongs_to :doctor, :foreign_key => "doctor_id"
	
end
