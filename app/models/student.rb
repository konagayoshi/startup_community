class Student < ActiveRecord::Base

  belongs_to :user, dependent: :destroy

end
