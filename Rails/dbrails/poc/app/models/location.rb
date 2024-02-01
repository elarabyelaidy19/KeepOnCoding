class Location < ApplicationRecord
  belongs_to :region
  has_many :people


  def self.in_region 
    all
  end   

end 
