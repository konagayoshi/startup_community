class Company < ActiveRecord::Base
  has_many :jobdemand, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
