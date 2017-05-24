class Invoice < ApplicationRecord

	has_many :visits
	belongs_to :patient
	has_many :payments
	
end
