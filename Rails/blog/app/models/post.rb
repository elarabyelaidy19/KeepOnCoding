class Post < ApplicationRecord 

 
 
  validates :title, presence: true,
  length: { minimum: 3 } 
  validates :text, presence: true, length: {minimum: 2}

  has_many :comments, dependent: :destroy

end
