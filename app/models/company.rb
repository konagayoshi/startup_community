class Company < ActiveRecord::Base
    has_many :jobdemands, dependent: :destroy
    belongs_to :users
    validates :name, :president, presence: true
end
