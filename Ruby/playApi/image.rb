require 'sidekiq' 
require 'mini_magick'



Sidekiq.configure_server do |config|
  config.redis = { db: 1 }
end

Sidekiq.configure_client do |config|
  config.redis = { db: 1 }
end



class ImageResizer

    include Sidekiq::Worker 

    def perform(image_path)  
        image = MiniMagick::Image.open(image_path)
        image.resize '500x500'
        image.write image_path
    end 
end 

ImageResizer.perform_async('./img.jpg')




