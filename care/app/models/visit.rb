class Visit < ApplicationRecord

	belongs_to :patient, :foreign_key => "patient_id"
	belongs_to :invoice, :foreign_key => "invoice_id", optional: true
	belongs_to :staff, :foreign_key => "staff_id"
	belongs_to :service, :foreign_key => "service_id"

	validates_presence_of :visitdate
	validates_presence_of :staff_id
	validates_presence_of :service_id

end
