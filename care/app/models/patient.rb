class Patient < ApplicationRecord

	has_and_belongs_to_many :doctors
	has_many :visits
	has_many :insurances
	has_many :invoices
	has_many :staffs, through: :visits

end
