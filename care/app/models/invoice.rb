class Invoice < ApplicationRecord

	has_many :visits
	belongs_to :patient, :foreign_key => "patient_id"
	has_many :payments

	validates_presence_of :issuedate
	validates_presence_of :visit_ids

	private
		def strip_whitespace
			self.comments = self.comments.strip unless self.comments.nil?
		end
	
end
