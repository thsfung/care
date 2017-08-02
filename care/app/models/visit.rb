class Visit < ApplicationRecord

	belongs_to :patient, :foreign_key => "patient_id"
	belongs_to :invoice, :foreign_key => "invoice_id", optional: true
	has_many :staff
	has_one :service

end
