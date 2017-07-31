class Mva < ApplicationRecord

	belongs_to :insurance, :foreign_key => "insurance_id"
	
end
