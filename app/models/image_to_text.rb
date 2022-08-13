class ImageToText < ApplicationRecord
    
    def self.image_text(path)
        image = RTesseract.new(path)
        image_text = image.to_s
        if image_text != " \n\f"
            return Nokogiri::HTML(image_text).text
        else
            return "La imagen no tiene texto"    
        end
    end

    def self.picture_from_url(url) 
        picture = open(url)
    end

end
