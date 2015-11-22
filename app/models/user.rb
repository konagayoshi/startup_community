class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :attr, presence: true

  has_many :students, dependent: :destroy
  has_many :colleges, dependent: :destroy
  has_many :companies, dependent: :destroy


end
