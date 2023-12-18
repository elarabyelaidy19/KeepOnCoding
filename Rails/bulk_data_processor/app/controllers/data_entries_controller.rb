class DataEntriesController < ApplicationController

    def new 

    end 

    def create  
        if params[:file].present? 
            file_path = File.join(Rails.root.to_s, 'fake_data.csv')  
            ImportDataJob.perform_later(file_path)
            redirect_to new_data_entry_path, notice: "Data imported Succesfully"
        else 
            redirect_to new_data_entry_path, notice: "Please Select File"
        end 
    end 
end
