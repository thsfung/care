class Staff < ApplicationRecord

	belongs_to :visit
	belongs_to :patient

end
