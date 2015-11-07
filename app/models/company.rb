class Company < ActiveRecord::Base
    has_many :jobdemands, dependent: :destroy
end
