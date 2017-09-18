class Doctor < ApplicationRecord

	has_many :patient_doctors, inverse_of: :doctor
	has_many :patients, :through => :patient_doctors

	validates_presence_of :firstname
	validates_presence_of :lastname
	validates_presence_of :primaryaddress
	validates_presence_of :country
	validates_presence_of :province
	validates_presence_of :city
	validates_presence_of :postalcode

	validate :contact_info

	private
		def contact_info
			unless workphone.blank? or fax.blank? or email.blank?
				errors.add(:base, "Please add a way to contact the doctor.")
			end
		end
	
end
