class Payment < ApplicationRecord

	belongs_to :invoice, :foreign_key => "invoice_id"
	belongs_to :patient, :foreign_key => "patient_id"
	belongs_to :insurance, :foreign_key => "insurance_id"

end
