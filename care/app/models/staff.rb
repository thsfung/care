class Staff < ApplicationRecord

	belongs_to :visit, :foreign_key => "visit_id"
	belongs_to :patient, :foreign_key => "patient_id"

end
