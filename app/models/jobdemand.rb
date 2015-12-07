class Jobdemand < ActiveRecord::Base
    belongs_to :company
    
    validates :title, :overview, presence: true

  def self.ransackabole_attributes(auth_oject = nil)
    %w(tilte overview)
  end

  def self.sackable_attributes(auth_object = nil)
    []
  end

end
