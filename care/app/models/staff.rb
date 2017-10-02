class Staff < ApplicationRecord

	has_many :visits
	has_many :patient_staffs
	has_many :patients, :through => :patient_staffs

	validates_presence_of :firstname
	validates_presence_of :lastname
	validates_presence_of :sinnumber
	validates_presence_of :primaryaddress
	validates_presence_of :country
	validates_presence_of :province
	validates_presence_of :city
	validates_presence_of :postalcode
	validates_presence_of :role

	validate :contact_info

	validates :firstname, uniqueness: {scope: :lastname, message: "and Last name exist together."}
	validates_format_of :email, :with => /@/

	before_save :strip_whitespace

	private
		def contact_info
			if homephone.blank? and cellphone.blank? and email.blank?
				errors.add(:base, "Please add a way to contact the staff.")
			end
		end

		def strip_whitespace
			self.firstname = self.firstname.strip unless self.firstname.nil?
			self.lastname = self.lastname.strip unless self.lastname.nil?
			self.primaryaddress = self.primaryaddress.strip unless self.primaryaddress.nil?
			self.secondaryaddress = self.secondaryaddress.strip unless self.secondaryaddress.nil?
			self.country = self.country.strip unless self.country.nil?
			self.province = self.province.strip unless self.province.nil?
			self.city = self.city.strip unless self.city.nil?
			self.postalcode = self.postalcode.strip unless self.postalcode.nil?
			self.email = self.email.strip unless self.email.nil?
			self.homephone = self.homephone.gsub(/\D/, '') unless self.homephone.nil?
			self.cellphone = self.cellphone.gsub(/\D/, '') unless self.cellphone.nil?
		end

end
