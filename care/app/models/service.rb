class Service < ApplicationRecord

	has_many :visits

	validates_presence_of :cost
	validates_presence_of :description
	validates_presence_of :role

	validates_uniqueness_of :description

	before_save :strip_whitespace

	private
		def strip_whitespace
			self.description = self.description.strip unless self.description.nil?
		end
	
end
