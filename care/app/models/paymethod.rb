class Paymethod < ApplicationRecord

	belongs_to :patient, :foreign_key => "patient_id"

	validates_presence_of :paytype

	validates_presence_of :holdername

	validate :info_check

	private
		def info_check
			if paytype == "EHS"
				validates_presence_of :company, :holdername, :holderbday, :relationshiptoclient
			elsif paytype == "MVA"
				validates_presence_of :company, :holdername, :holderbday, :relationshiptoclient, :adjustorname, :adjustorphone, :branchnumber, :claimnumber
			elsif paytype == "credit"
				validates_presence_of :holdername
			end
		end
	
end
