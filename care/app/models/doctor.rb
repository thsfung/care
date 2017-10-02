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

	validates :firstname, uniqueness: {scope: :lastname, message: "and Last name exist together."}
	validates_format_of :email, :with => /@/

	before_save :strip_whitespace

	private
		def contact_info
			if workphone.blank? and fax.blank? and email.blank?
				errors.add(:base, "Please add a way to contact the doctor.")
			end
		end

		def strip_whitespace
			self.firstname = self.firstname.strip unless self.firstname.nil?
			self.lastname = self.lastname.strip unless self.lastname.nil?
			self.primaryaddress = self.primaryaddress.strip unless self.primaryaddress.nil?
			self.country = self.country.strip unless self.country.nil?
			self.province = self.province.strip unless self.province.nil?
			self.city = self.city.strip unless self.city.nil?
			self.postalcode = self.postalcode.strip unless self.postalcode.nil?
			self.email = self.email.strip unless self.email.nil?
			self.workphone = self.workphone.gsub(/\D/, '') unless self.workphone.nil?
			self.extension = self.extension.gsub(/\D/, '') unless self.extension.nil?
			self.fax = self.fax.gsub(/\D/, '') unless self.fax.nil?
			self.email = self.email.strip unless self.email.nil?
			self.comments = self.comments.strip unless self.comments.nil?
		end
	
end
