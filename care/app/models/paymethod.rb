class Paymethod < ApplicationRecord

	belongs_to :patient, :foreign_key => "patient_id"
	
end
