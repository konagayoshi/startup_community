class Jobdemand < ActiveRecord::Base
    belongs_to :company
    
    validates :title, :overview, presence: true

  def self.ransackable_attributes(auth_oject = nil)
    %w(title overview)
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

end
