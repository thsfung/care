class Service < ApplicationRecord

	belongs_to :visit, :belongs_to => "visit_id"
	
end
