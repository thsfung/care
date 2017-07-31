class Insurance < ApplicationRecord

	belongs_to :patient, :foreign_key => "patient_id"
	has_one :ehi
	has_one :mva
	
end
