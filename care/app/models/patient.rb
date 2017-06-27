class Patient < ApplicationRecord

	has_many :patient_doctors
	has_many :doctors, :through => :patient_doctors
	has_many :visits
	has_many :insurances
	has_many :invoices
	has_many :staffs, through: :visits

end
