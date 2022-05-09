class Tweet < ApplicationRecord
  belongs_to :twitter_account 
  belongs_to :user
end
