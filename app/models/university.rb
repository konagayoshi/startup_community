class University < ActiveRecord::Base
	has_many :scholarships, dependent: :destroy
end
