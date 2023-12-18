require 'pathname'
require 'csv'

class ImportDataJob < ApplicationJob
  queue_as :default
  
  def perform(file)  
    Rails.logger.info("file path in job: #{file} ==================================") 
    CSV.foreach(file, headers: true) do |row| 
      DataEntry.create! row.to_hash
    end  

    data_entry.__elasticsearch__.index_document
  end

end
