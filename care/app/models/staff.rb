class Staff < ApplicationRecord

	has_many :visits
	has_many :patient_staffs
	has_many :patients, :through => :patient_staffs

end
