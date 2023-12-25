require 'net/http'
require 'uri'
require 'time'

class UptimeChecker
  def initialize(url, interval)
    @url = URI.parse(url)
    @interval = interval
  end

  def run
    loop do
      start_time = Time.now

      response = make_request

      end_time = Time.now
      response_time = (end_time - start_time).round(2)

      log_result(response_time, response)

      sleep(@interval)
    end
  end

  private

  def make_request
    http = Net::HTTP.new(@url.host, @url.port)
    http.use_ssl = (@url.scheme == 'https')

    request = Net::HTTP::Get.new(@url.request_uri)

    http.request(request)
  rescue StandardError => e
    "Error: #{e.message}"
  end

  def log_result(response_time, response)
    status = response.is_a?(Net::HTTPSuccess) ? 'UP' : 'DOWN'
    File.open('logs.txt', 'a+') do |f| 
        f.puts "#{Time.now.iso8601} - Status: #{status}, Response Time: #{response_time}s, Response: #{response}"
    end 
  end
end

# Example: Check the uptime of 'https://example.com' every 60 seconds
checker = UptimeChecker.new('http://ruby.bastardsbook.com/', 5)
checker.run
