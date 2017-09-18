class Patient < ApplicationRecord

	has_many :patient_doctors, inverse_of: :patient
	has_many :doctors, :through => :patient_doctors
	has_many :patient_staffs
	has_many :staffs, :through => :patient_staffs
	has_many :visits
	has_many :paymethods
	has_many :invoices
	has_many :staffs, :through => :visits
	has_many :payments

	validates_presence_of :firstname
	validates_presence_of :lastname
	validates_presence_of :birthday
	validates_presence_of :sex
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
			unless homephone.blank? or cellphone.blank? or workphone.blank? or email.blank?
				errors.add(:base, "Please add a way we can contact you.")
			end

		def strip_whitespace
			self.firstname = self.firstname.strip unless self.firstname.nil?
			self.lastname = self.lastname.strip unless self.lastname.nil?
			self.email = self.email.strip unless self.email.nil?
			#self.homephone = self.homephone.strip unless self.homephone.nil?
			#self.cellphone = self.cellphone.strip unless self.cellphone.nil?
			#self.workphone = self.workphone.strip unless self.workphone.nil?
			#self.extension = self.extension.strip unless self.extension.nil?
			#self.homephone = self.homephone.gsub(/\D/, '') unless self.homephone.nil?
			self.primaryaddress = self.primaryaddress.strip unless self.primaryaddress.nil?
			self.country = self.country.strip unless self.country.nil?
			self.province = self.province.strip unless self.province.nil?
			self.city = self.city.strip unless self.city.nil?
			self.postalcode = self.postalcode.strip unless self.postalcode.nil?
			self.comments = self.comments.strip unless self.comments.nil?
		end
	end
end
