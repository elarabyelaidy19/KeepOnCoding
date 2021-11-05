require 'nokogiri' 
require 'httparty' 
require 'byebug' 

def scrapper  
    url = "https://jobs.lever.co/theblockcrypto"
    unparsed_url = HTTParty.get(url) 
    parsed_url = Nokogiri::HTML(unparsed_url)  
    job_postings = parsed_url.css('div.posting') # parser all jobs pf the page   
    list_of_jobs = Array.new 

    page = 1 
    jobs_per_page = job_posting.count # 28 
    total_jobs_of_all_pages = parsed_url.css('div.job-count').text.split(' ')[1].gsub.to_i   
    last_page = (total_jobs_of_all_pages.to_f / jobs_per_page.to_f).round 
    
    while last_page >= page
        pagination_url = "https://jobs.lever.co/theblockcrypto/listing/?page=#{page}"
        pagination_unparsed_url = HTTParty.get(pagination_url) 
        pagination_parsed_url = Nokogiri::HTML(pagination_unparsed_url) 
        pagination_job_listing = pagination_parsed_url.css('div.posting')
        job_postings.each do |job_posting| 
            job = { 
                title: job_posting.css('h5').text, 
                company: job_posting.css("div.posting-categories").text, 
                url: job_posting.css('a')[0].attributes["href"].value  
            } 
            list_of_jobs << job
        end 
    byebug
end 
scrapper