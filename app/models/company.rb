class Company < ActiveRecord::Base
    has_many :jobdemands, dependent: :destroy
    
    validates :name, :president, presence: true
end
