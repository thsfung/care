class Visit < ApplicationRecord

	belongs_to :patient
	belongs_to :invoice
	has_one :staff
	has_one :service

end
