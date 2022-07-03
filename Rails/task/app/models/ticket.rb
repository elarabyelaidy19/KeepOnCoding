class Ticket < ApplicationRecord 
    belongs_to :project
    belongs_to :creator, foreign_key: 'user_id', class_name: 'User' 

    STATUSES = ["ToDo", "InProgress", "Done"] 
    
    validates :name, presence: true
    validates :body, presence: true
    validates :status, inclusion: { in: STATUSES }

    scope :open, -> { where("status != ?", "Done") } 
    
end
