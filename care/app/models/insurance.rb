class Insurance < ApplicationRecord

	belongs_to :patient
	has_one :ehi
	has_one :mva
	
end
