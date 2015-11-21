class Company < ActiveRecord::Base
  has_many :jobdemand, dependent: :destroy
  has_one :user, dependent: :destroy
end
