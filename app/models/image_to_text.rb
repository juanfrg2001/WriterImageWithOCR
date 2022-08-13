class ImageToText < ApplicationRecord
    
    def self.image_text(path)
        File.open("/tmp/test_file.jpg", "wb") do |f| 
            f.write HTTParty.get(path).body
        end
        image = RTesseract.new('/tmp/test_file.jpg')
        image_text = image.to_s
        if image_text != " \n\f"
            return Nokogiri::HTML(image_text).text
        else
            return "La imagen no tiene texto"    
        end
    end

end
