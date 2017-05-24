class Visit < ApplicationRecord

	belongs_to :patient
	belongs_to :invoice
	has_many :staff
	has_one :service

end
