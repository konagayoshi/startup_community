class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :students
  has_many :companies
  has_many :jobdemands, through: :companies
  has_many :universities
  has_many :scholarships, through: :universities
  has_many :admissions,  through: :universities
  has_many :news_events,  through: :universities
  has_many :study_aboards,  through: :universities
  has_many :courses,  through: :universities

end
