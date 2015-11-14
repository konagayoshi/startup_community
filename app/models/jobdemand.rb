class Jobdemand < ActiveRecord::Base
    belongs_to :company
    
    validates :title, :overview, presence: true
end
