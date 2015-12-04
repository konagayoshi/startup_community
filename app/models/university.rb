class University < ActiveRecord::Base
	has_many :scholarships, dependent: :destroy
	has_many :admissions, dependent: :destroy
	has_many :news_events, dependent: :destroy
	has_many :study_aboards, dependent: :destroy
	has_many :courses,dependent: :destroy
	belongs_to :user
end
