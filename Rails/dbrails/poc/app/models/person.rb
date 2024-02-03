class Person < ApplicationRecord

  belongs_to :role  
  belongs_to :location
  belongs_to :manager, class_name: 'Person', optional: true
  has_many :subordinates, class_name: 'Person', foreign_key: 'manager_id'


  def self.billable 
    joins(:role).merge(Role.billable)
  end 
end
