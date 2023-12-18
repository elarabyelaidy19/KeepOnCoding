# == Schema Information
#
# Table name: data_entries
#
#  id         :integer          not null, primary key
#  address    :string
#  age        :integer
#  email      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


require 'csv'
class DataEntry < ApplicationRecord
    include ELasticsearch::Model 
    include ELasticsearch::Model::Callback
    
    
    settings index: { number_of_shard: 1} do 
        mappings dynamic: 'false' do 
            indexes :name, type: 'text'
            indexes :age, type: 'integer' 
            indexes :email, type: 'keyword' 
            indexes :address, type: 'text'
        end 
    end 

    validates :name, presence: true
    validates :age, presence: true, numericality: {only_integer: true, greater_than: 0 } 

    def self.import(file) 
        CSV.foreach(file.path, headers: true) do |row| 
            DataEntry.create! row.to_hash
        end 
    end    
end

