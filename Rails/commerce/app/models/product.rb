# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :string
#  status      :string
#  slug        :string
#  client_id   :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
    validates :name, :slug, presence: true 
    validates :status, presence: true, inclusion: { in: %w[active inactive] }
    
    belongs_to :client, optional: false
end
