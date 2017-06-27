class Invoice < ApplicationRecord

	has_many :visits
	belongs_to :patient, :foreign_key => "patient_id"
	has_many :payments
	
end
